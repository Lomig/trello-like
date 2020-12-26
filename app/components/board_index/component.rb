# frozen_string_literal: true

# BoardIndex Component
module BoardIndex
  class Component < ViewComponent::Base
    delegate :component, to: :helpers

    def initialize(boards:)
      super
      @boards = boards
    end
  end
end
