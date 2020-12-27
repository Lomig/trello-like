# frozen_string_literal: true

class Column::Component < ApplicationComponent
  def initialize(column:)
    @column = column
  end
end
