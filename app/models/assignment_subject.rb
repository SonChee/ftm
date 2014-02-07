class AssignmentSubject < ActiveRecord::Base
	belongs_to :assignment
	belongs_to :subject
	has_many :assignment_tasks
end
