# frozen_string_literal: true

# BoardIndex Component
class BoardIndex::Component < ApplicationComponent
  def initialize(boards:)
    super
    @boards = boards
  end
end
