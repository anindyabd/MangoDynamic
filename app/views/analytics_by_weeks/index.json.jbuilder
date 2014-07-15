json.array!(@analytics_by_weeks) do |analytics_by_week|
  json.extract! analytics_by_week, :id, :week, :weibo_followers, :email_signups, :seo_rank, :weibo_clicks, :baidu_clicks
  json.url analytics_by_week_url(analytics_by_week, format: :json)
end
