require 'spec_helper'

describe "votes/edit.html.erb" do
  before(:each) do
    @vote = assign(:vote, stub_model(Vote,
      :activity_id => 1,
      :vote_up => false,
      :vote_down => false
    ))
  end

  it "renders the edit vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path(@vote), :method => "post" do
      assert_select "input#vote_activity_id", :name => "vote[activity_id]"
      assert_select "input#vote_vote_up", :name => "vote[vote_up]"
      assert_select "input#vote_vote_down", :name => "vote[vote_down]"
    end
  end
end
