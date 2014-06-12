require 'spec_helper'

describe "campaign_items/show" do
  before(:each) do
    @campaign_item = assign(:campaign_item, stub_model(CampaignItem,
      :duration_id => 1,
      :cart_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
