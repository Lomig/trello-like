# frozen_string_literal: true

module ColumnIndex
  class Component < ViewComponent::Base
    delegate :component, to: :helpers

    def initialize(columns:)
      @columns = columns
    end
  end
end
