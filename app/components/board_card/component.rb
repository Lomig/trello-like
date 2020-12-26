# frozen_string_literal: true

class BoardCard::Component < ViewComponent::Base
  def initialize(board:)
    super
    @board = board
  end
end
