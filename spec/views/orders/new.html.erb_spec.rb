require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :name => "Marshall Mathers",
      :email => "eminem@d12.com",
      :phone_number => "313-300-3211",
      :college_name => "8 Mile University",
      :address => "1 Detroit Ave",
      :city => "Detroit",
      :state => "Michigan",
      :zip_code => "31300",
      :plan_type => "Three Months"
    ).as_new_record)
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do
      assert_select "input#order_name[name=?]", "order[name]"
      assert_select "input#order_email[name=?]", "order[email]"
      assert_select "input#order_phone_number[name=?]", "order[phone_number]"
      assert_select "input#order_college_name[name=?]", "order[college_name]"
      assert_select "input#order_address[name=?]", "order[address]"
      assert_select "input#order_city[name=?]", "order[city]"
      assert_select "input#order_state[name=?]", "order[state]"
      assert_select "input#order_zip_code[name=?]", "order[zip_code]"
      #assert_select "input#order_plan_type[name=?]", "order[plan_type]"
    end
  end
end