class CourseSubject < ActiveRecord::Base
  belongs_to :subject, dependent: :destroy
  belongs_to :course, dependent: :destroy

end
