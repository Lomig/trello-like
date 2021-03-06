# frozen_string_literal: true

# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  name       :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  column_id  :bigint           not null
#
# Indexes
#
#  index_tasks_on_column_id  (column_id)
#
# Foreign Keys
#
#  fk_rails_...  (column_id => columns.id)
#
class Task < ApplicationRecord
  belongs_to :column
  has_one :board, through: :column

  has_rich_text :description

  after_create_commit :broadcast_task_creation_to_column
  after_update_commit :broadcast_task_update_to_column
  after_destroy_commit :broadcast_task_destroy_to_column

  validates :name, :position, presence: true

  scope :with_column, ->(column) { where(column: column) }

  private

  def broadcast_task_creation_to_column
    dom_id = ApplicationController.helpers.dom_id(column)
    broadcast_append_to dom_id, target: "#{model_name.plural}-#{dom_id}"
  end

  def broadcast_task_update_to_column
  end

  def broadcast_task_destroy_to_column
  end
end

class << Task
  def change_position(task, new_position, new_column)
    return if task.position == new_position && task.column == new_column

    old_column = task.column

    tasks_to_move_forward = new_column.tasks
                                      .where('position >= ?', new_position)

    tasks_to_move_forward.update_all('position = position + 1')

    new_position += + 2 if new_position == new_column.tasks.count
    task.update(position: new_position, column: new_column)

    old_column.fix_position unless old_column == new_column
    new_column.fix_position
  end
end
