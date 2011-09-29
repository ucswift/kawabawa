require 'spec_helper'

describe "activities/show.html.erb" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :ShortDescription => "Short Description",
      :LongDescription => "Long Description",
      :ScheduleFlexibility => "",
      :LocationFlexibility => "",
      :IsOutdoors => "",
      :IsSocial => "",
      :PhysicalActivityLevel => "",
      :MentalActivityLevel => "",
      :Cost => "",
      :Duration => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Short Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Long Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
