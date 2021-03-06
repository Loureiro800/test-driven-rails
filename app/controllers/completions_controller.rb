class CompletionsController < ApplicationController
  before_action :require_authenticated

  def create
    todo.completed!
    redirect_to todos_path
  end

  def destroy
  	todo.update_attributes(completed_at: nil)
  	redirect_to todos_path
  end

  private
  
  def todo
    current_user.todos.find(params[:todo_id])
  end

end
