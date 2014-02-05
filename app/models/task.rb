class Task < ActiveRecord::Base
  belongs_to :subject
  
  validates :name, presence: true
  validates :subject_id, presence: true
  validates :description, presence: true
end
