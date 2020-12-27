# frozen_string_literal: true

class ColumnIndex::Component < ApplicationComponent
  def initialize(columns:)
    @columns = columns
  end
end
