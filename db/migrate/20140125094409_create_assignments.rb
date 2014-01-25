class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :trainee_id
      t.integer :course_id
      t.integer :status_id

      t.timestamps
    end
  end
end
