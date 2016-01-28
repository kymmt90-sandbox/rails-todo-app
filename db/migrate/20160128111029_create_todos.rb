class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.date :deadline
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
