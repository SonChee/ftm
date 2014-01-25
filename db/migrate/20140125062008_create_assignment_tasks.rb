class CreateAssignmentTasks < ActiveRecord::Migration
  def change
    create_table :assignment_tasks do |t|
      t.int :assignment_subject_id
      t.int :task_id
      t.int :status_id

      t.timestamps
    end
  end
end
