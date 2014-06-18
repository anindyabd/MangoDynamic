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
	validates :name, :email, :college_name, :address, :plan_type, :phone_number, :state, :zip_code, presence: true
	CAMPAIGN_TYPES= ["Three Months", "Six Months", "Nine Months"]
end
