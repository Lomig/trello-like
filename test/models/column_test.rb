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
require "test_helper"

class ColumnTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
