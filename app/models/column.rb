# frozen_string_literal: true

class Column < ApplicationRecord
  belongs_to :board
  has_many :tasks, -> { order(:position) }, dependent: :restrict_with_error, inverse_of: :column
end
