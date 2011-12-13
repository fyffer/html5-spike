Html5Spike::Application.routes.draw do
  match '/project_list', :controller => :projects, :action => :projects_list
  resources :projects
  resources :employees
  resources :worked_ons

  match "/app.appcache" => Rails::Offline
end
