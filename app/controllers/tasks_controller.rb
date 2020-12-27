class TasksController < ApplicationController
  def move
    authorize(Task)
    render json: { content: 'Task Moved', params: params }
  end
end
