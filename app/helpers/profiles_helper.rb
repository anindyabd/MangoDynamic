module ProfilesHelper

	def weibo_data
		@analytics_by_weeks.map do |w|
			{
				week: w.week,
				weibo_clicks: w.weibo_clicks,
				weibo_followers: w.weibo_followers,
				baidu_clicks: w.baidu_clicks

			}
		end
	end

	def email_data
		@analytics_by_weeks.map do |w|
			{
				week: w.week,
				email: w.email_signups
			}
		end
	end
end