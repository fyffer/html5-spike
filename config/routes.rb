Html5Spike::Application.routes.draw do

  match '/project_list', :controller => :projects, :action => :projects_list
  match '/employee_list', :controller => :employees, :action => :employees_list
  match '/pretty', :controller => :projects, :action => :pretty

  resources :projects
  resources :employees
  resources :worked_ons


  match '/app.appcache' => Rails::Offline
end
