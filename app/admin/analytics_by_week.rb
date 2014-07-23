ActiveAdmin.register AnalyticsByWeek do

    permit_params :week, :weibo_followers, :email_signups, :seo_rank, :weibo_clicks, :baidu_clicks
  
end
