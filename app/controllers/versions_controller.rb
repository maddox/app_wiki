class VersionsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :app
    
    before :show do
      @screenshot = @version.screenshots.new
    end
  end
end
