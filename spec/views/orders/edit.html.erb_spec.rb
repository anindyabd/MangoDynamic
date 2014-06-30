require 'spec_helper'

describe "orders/edit" do
  context "with 1 order" do
    before(:each) do
      @order = assign(:order, stub_model(Order,
        :name => "Eminem",
        :email => "eminem@slimshady.com",
        :college => "Not Cranbrook",
        :address => "8 Mile",
        :plan_type => "Three Months"
      ))
    end

    it "renders the edit order form" do
      render

      rendered.should have_content("Name")
      rendered.should have_content("Email")

    end
  end
end
