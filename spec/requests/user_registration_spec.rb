require "spec_helper"

describe "Authentication" do
	subject { page }
	describe "User Input and Redirect" do
		it "allows new users to register with an email address and password" do
			visit "/users/sign_up"

			fill_in "Email",					:with => "xxx@example.com"
			fill_in "Password",					:with => "needs8letters"
			#fill_in "Password confirmation",	:with => "needs8letters"

			click_button "Sign up"

			page.should have_content('Sample Advertisements')
		end
	end

	describe "Signup page" do
		before { visit new_user_registration_path }
		let(:submit) { "Sign up" }

		describe "with invalid information" do
			it "should not create user" do
				expect { click_button submit }.not_to change(User, :count)
			end
		describe "after submission" do
			before { click_button submit }
			it { should have_content('Sign up') }
			it { should have_content('error') }
		end

		describe "with valid information" do
			before do
				fill_in "Email",					with: "xnxx@gmail.com"
				fill_in "Password",					with: "datPasswordCrayCray"
				#fill_in "Password confirmation",	with: "datPasswordCrayCray"
			end

			it "should create a user" do
				expect { click_button submit }.to change(User, :count).by(1)
			end
		end
		it { should have_content('Sign up') }
	end

	describe "Sign in page" do
		before { visit new_user_session_path }
		describe "with invalid information" do
			before { click_button "Sign in" }
			it { should have_content('Sign in') }
			#it { should have_selector('div.flash_alert', text: "Invalid") }
		end

		let(:user) { FactoryGirl.create(:user) }
		before do
			fill_in "Email", 					with: user.email
			fill_in "Password", 				with: user.password
			#fill_in "Password confirmation", 	with: user.password
			click_button "Sign in"
		end
	 	it { should_not have_selector('a', text: 'Sign up')}
            it { should_not have_selector('a', text: 'Sign in')}
            #it { should have_selector('a', text: 'Profile') }
            #it { should have_selector('a', text: 'Sign out') }
            #it { should have_selector('div.flash_notice', text: "Signed in successfully.") }
        end

        it { should have_content('Sign in') }
    end
end