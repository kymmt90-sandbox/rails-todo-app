# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string
#  deadline   :date
#  finished   :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TodosController < ApplicationController
  before_action :set_todo, only: [:edit, :update, :destroy, :toggle_finished]

  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.all
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  # POST /todos.json
  def create
    @todo = Todo.new(todo_params)

    respond_to do |format|
      if @todo.save
        format.html { redirect_to todos_url }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update
    respond_to do |format|
      if @todo.update(todo_params)
        format.html { redirect_to todos_url }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /todos/1
  def destroy
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to todos_url }
    end
  end

  def toggle_finished
    @todo.toggle :finished
    @todo.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:title, :deadline, :finished)
    end
end
