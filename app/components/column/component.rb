# frozen_string_literal: true

class Column::Component < ViewComponent::Base
  def initialize(column:)
    @column = column
  end
end
