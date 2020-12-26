# frozen_string_literal: true

class ColumnIndex::Component < ViewComponent::Base
  delegate :component, to: :helpers
  
  def initialize(columns:)
    @columns = columns
  end
end
