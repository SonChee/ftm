class Subject < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks, reject_if: ->attrs { attrs["name"].blank? }, allow_destroy: true
  
  validates :name, presence: true
  validates :description, presence: true
end
