require 'spec_helper'

describe "Posts" do

	before(:each) do
    	@post = FactoryGirl.create(:post)
  	end


	it "should allow new comments to be submitted" do
		visit post_path(@post.id)
		fill_in "comment[content]", :with => "foobar"
		find('.btn').click
		expect(page).to have_css '.single-comment'
	end
end
