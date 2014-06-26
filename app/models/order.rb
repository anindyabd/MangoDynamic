# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  name         :string(255)      not null
#  email        :string(255)      not null
#  college_name :string(255)
#  address      :string(255)      not null
#  plan_type    :string(255)      not null
#  created_at   :datetime
#  updated_at   :datetime
#  phone_number :string(255)      not null
#  state        :string(255)      not null
#  zip_code     :string(255)      not null
#

class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	CAMPAIGN_TYPES= ["Three Months", "Six Months", "Nine Months"]
	STATES = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", 
			  "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", 
			  "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", 
			  "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico",
			  "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico",
			  "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia",
			  "Washington", "West Virginia", "Wisconsin", "Wyoming"]
	VALID_PHONE_REGEX = /(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]‌​)\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)([2-9]1[02-9]‌​|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})/
	before_save {self.phone_number= phone_number.gsub(/\D/, '') }
	validates :name, :email, :college_name, :address, :plan_type, :state, :zip_code, :city, presence: true
	validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX, message: "Please enter phone number in xxx-xxx-xxxx format.
		Also ensure number is a valid." }
	validates :plan_type, inclusion: CAMPAIGN_TYPES
	validates :state, inclusion: { in: STATES, message: " %{value} is not a valid US state" }

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end

	def calculate_total(cart)
		self.total_price = cart.line_items.to_a.sum { |item| item.total_price }
	end
	# Strip everything but digits, so the user can specify "555 234 34" or
	# "5552-3434" and both will mean "55523434"
end
