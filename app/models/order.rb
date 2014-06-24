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
	validates :name, :email, :college_name, :address, :plan_type, :phone_number, :state, :zip_code, presence: true
	CAMPAIGN_TYPES= ["Three Months", "Six Months", "Nine Months"]
	validates :plan_type, inclusion: CAMPAIGN_TYPES
	#before_save :calculate_total

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end

	def calculate_total(cart)
		self.total_price = cart.line_items.to_a.sum { |item| item.total_price }
	end

end
