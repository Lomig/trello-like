# frozen_string_literal: true

module Column
  class Component < ViewComponent::Base
    def initialize(column:)
      @column = column
    end
  end
end
