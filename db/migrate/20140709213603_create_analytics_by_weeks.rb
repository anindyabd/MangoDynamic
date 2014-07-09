class CreateAnalyticsByWeeks < ActiveRecord::Migration
  def change
    create_table :analytics_by_weeks do |t|
      t.integer :week
      t.integer :weibo_followers
      t.integer :email_signups
      t.integer :seo_rank
      t.integer :weibo_clicks
      t.integer :profile_id
      t.timestamps
    end

    add_index :analytics_by_weeks, :profile_id
  end
end
