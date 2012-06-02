class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user
      t.string :name
      t.date :due_date
      t.boolean :done, :null => false, :default => false
      t.references :user
      t.timestamps
    end
  end
end
