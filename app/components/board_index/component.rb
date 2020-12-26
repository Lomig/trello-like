# frozen_string_literal: true

# BoardIndex Component
class BoardIndex::Component < ViewComponent::Base
  delegate :component, to: :helpers

  def initialize(boards:)
    super
    @boards = boards
  end
end
