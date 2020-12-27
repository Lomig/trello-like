# frozen_string_literal: true

class ColumnIndex::Component < ApplicationComponent
  def initialize(columns:)
    @columns = columns
    @board_id = columns&.first.board.id
  end
end
