class Assignment < ActiveRecord::Base
	belongs_to :user
	belongs_to :course
	has_many :assignment_subjects
end
