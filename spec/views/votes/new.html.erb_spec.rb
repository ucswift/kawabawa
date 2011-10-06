require 'spec_helper'

describe "votes/new.html.erb" do
  before(:each) do
    assign(:vote, stub_model(Vote,
      :activity_id => 1,
      :vote_up => false,
      :vote_down => false
    ).as_new_record)
  end

  it "renders new vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path, :method => "post" do
      assert_select "input#vote_activity_id", :name => "vote[activity_id]"
      assert_select "input#vote_vote_up", :name => "vote[vote_up]"
      assert_select "input#vote_vote_down", :name => "vote[vote_down]"
    end
  end
end
