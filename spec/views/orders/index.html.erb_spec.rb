require 'spec_helper'

describe "orders/index" do
  context "with 2 orders" do 
    before(:each) do
      assign(:orders, [
      stub_model(Order, :name => "Tupac"),
      stub_model(Order, :name => "Biggie")
      ])
    end

    it "renders a list of orders" do
      render
      # Run the generator again with the --webrat flag if you want to use webrat matchers
      rendered.should have_content("Tupac")
      rendered.should have_content("Biggie")
    end
  end
end
