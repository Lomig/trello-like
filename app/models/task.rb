# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :column

  has_rich_text :description
end
