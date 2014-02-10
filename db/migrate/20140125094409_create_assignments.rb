class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :status_id

      t.integer :status, default: 1

      t.timestamps
    end
  end
end
