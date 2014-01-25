class CreateAssignmentSubjects < ActiveRecord::Migration
  def change
    create_table :assignment_subjects do |t|
      t.int :trainee_id
      t.int :course_id
      t.int :status_id

      t.timestamps
    end
  end
end
