# == Schema Information
#
# Table name: campaign_items
#
#  id          :integer          not null, primary key
#  duration_id :integer
#  cart_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class CampaignItem < ActiveRecord::Base
	belongs_to :cart
	belongs_to :duration
	
end
