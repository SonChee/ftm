class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :pre_subject_id
      t.string :description

      t.timestamps
    end
  end
end
