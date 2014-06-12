require 'spec_helper'

describe "durations/index" do
  before(:each) do
    assign(:durations, [
      stub_model(Duration,
        :title => "Title",
        :length => 1,
        :rate => "9.99",
        :discount => 1.5
      ),
      stub_model(Duration,
        :title => "Title",
        :length => 1,
        :rate => "9.99",
        :discount => 1.5
      )
    ])
  end

  it "renders a list of durations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
