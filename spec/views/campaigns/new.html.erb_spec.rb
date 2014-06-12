require 'spec_helper'

describe "campaigns/new" do
  before(:each) do
    assign(:campaign, stub_model(Campaign,
      :length => "MyString",
      :integer => "MyString",
      :rate => "9.99",
      :discount => 1.5
    ).as_new_record)
  end

  it "renders new campaign form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", campaigns_path, "post" do
      assert_select "input#campaign_length[name=?]", "campaign[length]"
      assert_select "input#campaign_integer[name=?]", "campaign[integer]"
      assert_select "input#campaign_rate[name=?]", "campaign[rate]"
      assert_select "input#campaign_discount[name=?]", "campaign[discount]"
    end
  end
end
