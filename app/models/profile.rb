class Profile < ActiveRecord::Base
  
  belongs_to :user
  has_many :analytics_by_weeks, dependent: :destroy
  
end