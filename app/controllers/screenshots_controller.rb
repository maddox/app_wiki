class ScreenshotsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :version

    response_for :create do
      redirect_to app_version_path(parent_object.app, parent_object)
    end

    response_for :destroy do
      redirect_to app_version_path(parent_object.app, parent_object)
    end

  end
end
