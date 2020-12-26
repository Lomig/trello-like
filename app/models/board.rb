# frozen_string_literal: true

class Board < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id', inverse_of: :owned_boards
  has_many :board_memberships, dependent: :destroy
  has_many :members, through: :board_memberships
  has_many :columns, -> { order(:position) }, dependent: :destroy, inverse_of: :board
end
