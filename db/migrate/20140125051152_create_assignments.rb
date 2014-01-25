class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.int :trainee_id
      t.int :course_id
      t.int :status_id

      t.timestamps
    end
  end
end
