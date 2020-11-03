class CompletionsController < ApplicationController
  before_action :require_authenticated

  def create
    current_user.todos.find(params[:todo_id]).touch :completed_at
    redirect_to todos_path
  end

  # private
  #
  # def todo_params
  #   params.require(:todo).permit(:title)
  # end
end
