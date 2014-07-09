require 'spec_helper'

describe "analytics_by_weeks/new" do
  before(:each) do
    assign(:analytics_by_week, stub_model(AnalyticsByWeek,
      :week => 1,
      :weibo_followers => 1,
      :email_signups => 1,
      :seo_rank => 1,
      :weibo_clicks => 1
    ).as_new_record)
  end

  it "renders new analytics_by_week form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", analytics_by_weeks_path, "post" do
      assert_select "input#analytics_by_week_week[name=?]", "analytics_by_week[week]"
      assert_select "input#analytics_by_week_weibo_followers[name=?]", "analytics_by_week[weibo_followers]"
      assert_select "input#analytics_by_week_email_signups[name=?]", "analytics_by_week[email_signups]"
      assert_select "input#analytics_by_week_seo_rank[name=?]", "analytics_by_week[seo_rank]"
      assert_select "input#analytics_by_week_weibo_clicks[name=?]", "analytics_by_week[weibo_clicks]"
    end
  end
end
