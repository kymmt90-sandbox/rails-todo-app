class ChangeFinishedInTodos < ActiveRecord::Migration
  def change
    change_column :todos, :finished, :boolean, default: false, null: false
  end
end
