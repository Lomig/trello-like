# frozen_string_literal: true

# == Schema Information
#
# Table name: columns
#
#  id         :bigint           not null, primary key
#  name       :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :bigint           not null
#
# Indexes
#
#  index_columns_on_board_id  (board_id)
#
# Foreign Keys
#
#  fk_rails_...  (board_id => boards.id)
#
class Column < ApplicationRecord
  belongs_to :board
  has_many :tasks, -> { order(:position) }, dependent: :restrict_with_error, inverse_of: :column
end
