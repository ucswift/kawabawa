require 'spec_helper'

describe "activities/index.html.erb" do
  before(:each) do
    assign(:activities, [
      stub_model(Activity,
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
      ),
      stub_model(Activity,
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
      )
    ])
  end

  it "renders a list of activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Short Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Long Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
