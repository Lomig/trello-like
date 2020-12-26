# frozen_string_literal: true

# Board Controller
class BoardsController < ApplicationController
  def index
    @boards = policy_scope(Board.all)
  end

  def show
  end
end
