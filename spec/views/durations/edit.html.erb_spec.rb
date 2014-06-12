require 'spec_helper'

describe "durations/edit" do
  before(:each) do
    @duration = assign(:duration, stub_model(Duration,
      :title => "MyString",
      :length => 1,
      :rate => "9.99",
      :discount => 1.5
    ))
  end

  it "renders the edit duration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", duration_path(@duration), "post" do
      assert_select "input#duration_title[name=?]", "duration[title]"
      assert_select "input#duration_length[name=?]", "duration[length]"
      assert_select "input#duration_rate[name=?]", "duration[rate]"
      assert_select "input#duration_discount[name=?]", "duration[discount]"
    end
  end
end
