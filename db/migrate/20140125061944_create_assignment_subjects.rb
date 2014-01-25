class CreateAssignmentSubjects < ActiveRecord::Migration
  def change
    create_table :assignment_subjects do |t|
      t.integer :assignment_id
      t.integer :subject_id
      t.integer :status_id

      t.timestamps
    end
  end
end
