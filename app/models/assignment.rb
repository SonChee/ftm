class Assignment < ActiveRecord::Base
	belongs_to :user
	belongs_to :course, dependent: :delete
	has_many :assignment_subjects
end
