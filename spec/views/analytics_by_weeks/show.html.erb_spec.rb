require 'spec_helper'

describe "analytics_by_weeks/show" do
  before(:each) do
    @analytics_by_week = assign(:analytics_by_week, stub_model(AnalyticsByWeek,
      :week => 1,
      :weibo_followers => 2,
      :email_signups => 3,
      :seo_rank => 4,
      :weibo_clicks => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
