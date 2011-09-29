require 'spec_helper'

describe "activities/edit.html.erb" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :ShortDescription => "MyString",
      :LongDescription => "MyString",
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

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path(@activity), :method => "post" do
      assert_select "input#activity_ShortDescription", :name => "activity[ShortDescription]"
      assert_select "input#activity_LongDescription", :name => "activity[LongDescription]"
      assert_select "input#activity_ScheduleFlexibility", :name => "activity[ScheduleFlexibility]"
      assert_select "input#activity_LocationFlexibility", :name => "activity[LocationFlexibility]"
      assert_select "input#activity_IsOutdoors", :name => "activity[IsOutdoors]"
      assert_select "input#activity_IsSocial", :name => "activity[IsSocial]"
      assert_select "input#activity_PhysicalActivityLevel", :name => "activity[PhysicalActivityLevel]"
      assert_select "input#activity_MentalActivityLevel", :name => "activity[MentalActivityLevel]"
      assert_select "input#activity_Cost", :name => "activity[Cost]"
      assert_select "input#activity_Duration", :name => "activity[Duration]"
    end
  end
end
