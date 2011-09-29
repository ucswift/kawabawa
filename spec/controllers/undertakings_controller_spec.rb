require 'spec_helper'

describe UndertakingsController do

  describe "GET 'search'" do
    it "should be successful" do
      get 'search'
      response.should be_success
    end
  end

  describe "GET 'add'" do
    it "should be successful" do
      get 'add'
      response.should be_success
    end
  end

  describe "GET 'list'" do
    it "should be successful" do
      get 'list'
      response.should be_success
    end
  end

end
