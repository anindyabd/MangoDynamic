require 'spec_helper'

describe "analytics_by_weeks/index" do
  before(:each) do
    assign(:analytics_by_weeks, [
      stub_model(AnalyticsByWeek,
        :week => 1,
        :weibo_followers => 2,
        :email_signups => 3,
        :seo_rank => 4,
        :weibo_clicks => 5
      ),
      stub_model(AnalyticsByWeek,
        :week => 1,
        :weibo_followers => 2,
        :email_signups => 3,
        :seo_rank => 4,
        :weibo_clicks => 5
      )
    ])
  end

  it "renders a list of analytics_by_weeks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
