class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.int :pre_subject_id
      t.string :descriptio

      t.timestamps
    end
  end
end
