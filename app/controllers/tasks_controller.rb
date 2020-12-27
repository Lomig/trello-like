class TasksController < ApplicationController
  def move
    task = Task.find(params[:id])
    new_position = params[:position].to_i
    new_column = Column.find(params[:column])

    authorize(task)

    Task.change_position(task, new_position, new_column)
    render json: { content: 'Task Moved' }
  end
end
