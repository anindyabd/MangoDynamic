require 'spec_helper'

describe "products/index" do
  context "with 2 products" do 
    before(:each) do
      assign(:products, [
        stub_model(Product,
          :title => "Slim Shady LP",
          :description => "MyText",
          :price => "9.99"
        ),
        stub_model(Product,
          :title => "The Massacre",
          :description => "MyText",
          :price => "9.99"
        )
      ])
    end

    it "renders a list of products" do
      render
      rendered.should have_content("Slim Shady LP")
      rendered.should have_content("The Massacre")
    end
  end
end
