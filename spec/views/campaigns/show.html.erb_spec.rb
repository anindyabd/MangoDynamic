require 'spec_helper'

describe "campaigns/show" do
  before(:each) do
    @campaign = assign(:campaign, stub_model(Campaign,
      :length => "Length",
      :integer => "Integer",
      :rate => "9.99",
      :discount => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Length/)
    rendered.should match(/Integer/)
    rendered.should match(/9.99/)
    rendered.should match(/1.5/)
  end
end
