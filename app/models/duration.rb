class Duration < ActiveRecord::Base
	has_one :campaign_item

	before_destroy :ensure_not_referenced_by_any_campaign_item

	def update_plan
		puts "access"
	end

	private 
	def ensure_not_referenced_by_any_campaign_item
		if campaign_items.empty?
			return true
		else
			errors.add(:base, 'Campaign Items present')
			return false
		end
	end
end
