require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :name => "Name",
        :email => "Email",
        :college => "College",
        :address => "MyText",
        :plan_type => "Plan Type"
      ),
      stub_model(Order,
        :name => "Name",
        :email => "Email",
        :college => "College",
        :address => "MyText",
        :plan_type => "Plan Type"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "College".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Plan Type".to_s, :count => 2
  end
end
