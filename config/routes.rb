ActionController::Routing::Routes.draw do |map|
  map.resources :screenshots

  map.resources :apps, :has_many => :versions

  map.resources :versions, :has_many => :screenshots

  map.root :controller => "apps"
end
