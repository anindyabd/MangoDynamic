require 'spec_helper'

describe "contact us page" do
	it "delivers a valid message" do
		visit contacts_path
		fill_in 'Name', :with => 'Eric Patterson'
		fill_in 'Email', :with => 'teft8@aim.com'
		fill_in 'Message', :with => 'That product is cray cray'
		click_button 'Send message'
		page.body.should have_content('Thank you for your message, We will contact you soon!')
		last_email.to.should include('eric@consultmango.com')
		last_email.to.should include('teft8@aim.com')
	end
end