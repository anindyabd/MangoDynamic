class CampaignItem < ActiveRecord::Base
	belongs_to :cart
	belongs_to :duration
	
end
