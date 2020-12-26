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
require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
