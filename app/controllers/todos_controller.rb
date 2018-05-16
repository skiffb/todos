class TodosController < ApplicationController
  before_action :authenticate
  def index
    @todos = Todo.where(email: session[:current_email])
  end
  def new
    @todo = Todo.new
  end
  def create
    @todo = Todo.new(todo_params)
    @todo.email = session[:current_email]
    @todo.save
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

end
