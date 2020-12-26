# frozen_string_literal: true

class Column < ApplicationRecord
  belongs_to :board
  has_many :tasks, dependent: :restrict_with_error
end
