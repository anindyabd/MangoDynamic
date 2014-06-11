class Product < ActiveRecord::Base
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
	validates :title, :description, presence: true
	VALID_PRICE_REGEX = /\A^\d+??(?:\.\d{0,2})?$\z/i
	validates :price, presence: true, format: { with: VALID_PRICE_REGEX }
	validates :title, uniqueness: true

	private

	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end
