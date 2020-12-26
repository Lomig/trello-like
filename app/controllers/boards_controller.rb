# frozen_string_literal: true

# Board Controller
class BoardsController < ApplicationController
  before_action :set_board, only: %w[show]

  def index
    @boards = policy_scope(Board.all)
  end

  def show
    authorize(@board)
  end

  private

  def set_board
    @board = Board.find(params[:id])
  end
end
