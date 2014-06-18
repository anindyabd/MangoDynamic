require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :name => "MyString",
      :email => "MyString",
      :college => "MyString",
      :address => "MyText",
      :plan_type => "MyString"
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orders_path, "post" do
      assert_select "input#order_name[name=?]", "order[name]"
      assert_select "input#order_email[name=?]", "order[email]"
      assert_select "input#order_college[name=?]", "order[college]"
      assert_select "textarea#order_address[name=?]", "order[address]"
      assert_select "input#order_plan_type[name=?]", "order[plan_type]"
    end
  end
end