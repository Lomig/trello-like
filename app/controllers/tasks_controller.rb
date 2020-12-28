class TasksController < ApplicationController
  before_action :set_column, only: %w[new create]

  def new
    @task = @column.tasks.new
    authorize(@task)
  end

  def create
    @task = @column.tasks.new(task_params)
    @task.position = @column.tasks.count + 1
    authorize(@task)

    if @task.save!
      respond_to do |format|
        format.turbo_stream { redirect_to @task.board }
        format.html { redirect_to @task.board }
      end
    else
      error_string = @task.errors.messages.inject('') { |text, (key, value)| "#{text}\n#{key} #{value.join(', ')}" }
      flash[:error] = { title: 'Submission Error', body: error_string }

      redirect_to new_column_task_path(@column)
    end
  end

  def move
    task = Task.find(params[:id])
    new_position = params[:position].to_i
    new_column = Column.find(params[:column])

    authorize(task)

    Task.change_position(task, new_position, new_column)
    render json: { content: 'Task Moved' }
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end

  def set_column
    @column = Column.find(params[:column_id])
  end
end
