class CreateCourseSubjects < ActiveRecord::Migration
  def change
    create_table :course_subjects do |t|
      t.int :course_id
      t.int :subject_id

      t.timestamps
    end
  end
end
