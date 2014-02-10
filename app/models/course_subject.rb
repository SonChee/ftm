class CourseSubject < ActiveRecord::Base
  belongs_to :subject, dependent: :delete
  belongs_to :course, dependent: :delete

end
