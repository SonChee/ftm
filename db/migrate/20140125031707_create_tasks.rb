class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.int :subject_id
      t.string :description

      t.timestamps
    end
  end
end
