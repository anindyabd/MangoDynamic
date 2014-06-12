class CreateCampaignItems < ActiveRecord::Migration
  def change
    create_table :campaign_items do |t|
      t.integer :duration_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
