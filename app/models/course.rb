class Course < ActiveRecord::Base
  has_many :assignments
  has_many :course_subjects, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
end
