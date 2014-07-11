class Profile < ActiveRecord::Base
  
  belongs_to :user
  has_many :analytics_by_weeks, dependent: :destroy
  
  def feed
  	AnalyticsByWeek.where("profile_id = ?", id)
  end
end