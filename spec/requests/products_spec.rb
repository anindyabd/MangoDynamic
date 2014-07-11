require 'spec_helper'

describe "Products" do
  describe "GET /products" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get products_path
      response.status.should be(200)
    end
  end

  describe "User Input and Redirect" do
		it "allows new users to register with an email address and password" do
			visit "/users/sign_up"

			fill_in "Email",					:with => "xxx@example.com"
			fill_in "Password",					:with => "needs8letters"
			fill_in "Password confirmation",	:with => "needs8letters"

			click_button "Sign up"

			page.should have_content("Sample Advertisements") #redirect to home page
		end
	end
end
