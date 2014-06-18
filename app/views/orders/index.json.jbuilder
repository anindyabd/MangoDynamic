json.array!(@orders) do |order|
  json.extract! order, :id, :name, :email, :phone_number, :college_name, :address, :state, :zip_code :plan_type
  json.url order_url(order, format: :json)
end
