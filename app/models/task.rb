class Task < ActiveRecord::Base
  belongs_to :subject
  has_many :assignment_tasks
  
  validates :name, presence: true
end
