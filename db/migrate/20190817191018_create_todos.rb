class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :group
      t.integer :priority
      t.timestamp :Dates
    end
  end
end
