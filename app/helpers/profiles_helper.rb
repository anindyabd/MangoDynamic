module ProfilesHelper
	def chart_data
		@analytics_by_weeks.map do |w|
			{
				week: w.week,
				weibo_clicks: w.weibo_clicks
				
			}
		end
	end
end