# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_boards, class_name: 'Board', dependent: :restrict_with_error, inverse_of: :owner
  has_many :board_memberships, dependent: :destroy
  has_many :boards, through: :board_memberships

  has_one_attached :avatar
end
