class Course < ActiveRecord::Base
  has_many :assignments
  has_many :course_subjects, dependent: :destroy
  accepts_nested_attributes_for :course_subjects, reject_if: ->attrs { attrs["subject_id"].blank? }, allow_destroy: true
  validates :name, presence: true
  validates :description, presence: true
end
