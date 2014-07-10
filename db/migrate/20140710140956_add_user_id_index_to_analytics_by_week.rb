class AddUserIdIndexToAnalyticsByWeek < ActiveRecord::Migration
  def change
  	add_column :analytics_by_weeks, :user_id, :string
  	add_index :analytics_by_weeks, :user_id
  end
end
