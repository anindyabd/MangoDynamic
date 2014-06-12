json.array!(@campaign_items) do |campaign_item|
  json.extract! campaign_item, :id, :duration_id, :cart_id
  json.url campaign_item_url(campaign_item, format: :json)
end
