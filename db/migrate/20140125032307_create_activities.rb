class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.int :user_id
      t.int :course_id
      t.int :subject_id
      t.int :task_id
      t.int :status_id

      t.timestamps
    end
  end
end
