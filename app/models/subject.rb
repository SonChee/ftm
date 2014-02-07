class Subject < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  has_many :assignment_subjects
  accepts_nested_attributes_for :tasks, reject_if: ->attrs { attrs["name"].blank? }, allow_destroy: true
  
  validates :name, presence: true
  validates :description, presence: true
end
