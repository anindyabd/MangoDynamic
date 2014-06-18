json.array!(@orders) do |order|
  json.extract! order, :id, :name, :email, :college, :address, :plan_type
  json.url order_url(order, format: :json)
end
