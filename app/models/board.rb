# frozen_string_literal: true

# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_boards_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Board < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id', inverse_of: :owned_boards
  has_many :board_memberships, dependent: :destroy
  has_many :members, through: :board_memberships, source: :user
  has_many :columns, -> { order(:position) }, dependent: :destroy, inverse_of: :board

  after_create :add_owner_to_members

  private

  def add_owner_to_members
    BoardMembership.create(board: self, user: owner)
  end
end
