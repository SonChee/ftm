class CreateAssignmentTasks < ActiveRecord::Migration
  def change
    create_table :assignment_tasks do |t|
      t.integer :assignment_subject_id
      t.integer :task_id
      t.integer :status_id

      t.timestamps
    end
  end
end
