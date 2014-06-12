require 'spec_helper'

describe "campaign_items/edit" do
  before(:each) do
    @campaign_item = assign(:campaign_item, stub_model(CampaignItem,
      :duration_id => 1,
      :cart_id => 1
    ))
  end

  it "renders the edit campaign_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", campaign_item_path(@campaign_item), "post" do
      assert_select "input#campaign_item_duration_id[name=?]", "campaign_item[duration_id]"
      assert_select "input#campaign_item_cart_id[name=?]", "campaign_item[cart_id]"
    end
  end
end
