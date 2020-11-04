class CompletionsController < ApplicationController
  before_action :require_authenticated

  def create
    todo.touch :completed_at
    redirect_to todos_path
  end

  private
  
  def todo
    current_user.todos.find(params[:todo_id])
  end

end
