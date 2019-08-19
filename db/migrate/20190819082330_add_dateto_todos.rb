class AddDatetoTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :Completion_Date ,:date 
  end
end
