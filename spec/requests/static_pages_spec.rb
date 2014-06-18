require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "should have the content 'Sample Advertisments'" do
      
      visit root_path
      expect(page).to have_content('Mango is elegant')
    end
  end
end
