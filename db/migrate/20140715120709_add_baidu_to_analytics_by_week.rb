class AddBaiduToAnalyticsByWeek < ActiveRecord::Migration
  def change
  	add_column :analytics_by_weeks, :baidu_clicks, :integer
  end
end
