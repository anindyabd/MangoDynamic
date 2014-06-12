require 'spec_helper'

describe "campaign_items/new" do
  before(:each) do
    assign(:campaign_item, stub_model(CampaignItem,
      :duration_id => 1,
      :cart_id => 1
    ).as_new_record)
  end

  it "renders new campaign_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", campaign_items_path, "post" do
      assert_select "input#campaign_item_duration_id[name=?]", "campaign_item[duration_id]"
      assert_select "input#campaign_item_cart_id[name=?]", "campaign_item[cart_id]"
    end
  end
end
