class AssignmentTask < ActiveRecord::Base
	belongs_to :assignment_subject
	belongs_to :task
end
