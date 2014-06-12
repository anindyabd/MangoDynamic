require 'spec_helper'

describe "durations/show" do
  before(:each) do
    @duration = assign(:duration, stub_model(Duration,
      :title => "Title",
      :length => 1,
      :rate => "9.99",
      :discount => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/1.5/)
  end
end
