class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :subject_id
      t.string :description

      t.timestamps
    end
  end
end
