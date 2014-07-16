module ProfilesHelper

	def clickthrough_data
		@analytics_by_weeks.map do |w|
			{
				week: w.week,
				weibo_clicks: w.weibo_clicks,
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

	def weibo_data
		@analytics_by_weeks.map do |w|
			{
				week: w.week,
				weibo_followers: w.weibo_followers
			}
		end
	end
end