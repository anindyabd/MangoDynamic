require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "should have the content 'Sample Advertisments'" do
      
      visit root_path
      expect(page).to have_content('Mango is elegant')
    end
  end

  describe "About page" do
  	it "should have the content 'About us'" do
  		visit about_path
  		expect(page).to have_content('About Us')
  	end
  end

  describe "Team page" do
  	it "should have the content 'The team'" do
  		visit team_path
  		expect(page).to have_content('The team')
  	end
  end
end
