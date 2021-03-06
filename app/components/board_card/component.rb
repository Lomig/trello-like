# frozen_string_literal: true

class BoardCard::Component < ApplicationComponent
  BACKGROUND_COLOR = %w[
    bg-red-400
    bg-yellow-400
    bg-green-400
    bg-blue-400
    bg-indigo-400
    bg-purple-400
    bg-pink-400
  ].freeze

  def initialize(board:)
    super
    @background_color = BACKGROUND_COLOR.sample
    @board = board
  end
end
