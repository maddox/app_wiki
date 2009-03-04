class AppsController < ApplicationController
  make_resourceful do
    actions :all
  end
  
  def current_objects
    @current_object ||= current_model.find(:all, :order => "title")
  end
  

end
