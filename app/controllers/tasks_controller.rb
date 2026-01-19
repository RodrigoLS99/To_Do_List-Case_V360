class TasksController < ApplicationController
  before_action :set_todo_list
  before_action :set_task, only: [:destroy, :complete]

  def create
    @task = @todo_list.tasks.create(task_params)
    redirect_to @todo_list, notice: "Tarefa criada!"
  end

  def destroy
    @task.destroy
    redirect_to @todo_list, notice: "Tarefa apagada."
  end

  def complete
    @task.update(completed_at: Time.now)
    redirect_to @todo_list, notice: "Tarefa concluída!"
  end

  private

  def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
  end

  def set_task
    @task = @todo_list.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:content)
  end
end