# frozen_string_literal: true

# == Schema Information
#
# Table name: board_memberships
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_board_memberships_on_board_id  (board_id)
#  index_board_memberships_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (board_id => boards.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class BoardMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
