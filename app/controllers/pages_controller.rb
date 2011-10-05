require 'find_activity_model'

class PagesController < ApplicationController

  def home
    @find_activity_model = FindActivityModel.new
  end

end
