class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def new
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save!
      respond_to do |format|
        format.html { redirect_to  todos_path}
        format.json
      end
    else
      redirect_to new_todo_path
    end
  end

  def todo_params
    params.require(:todo).permit(:title)
  end
end
