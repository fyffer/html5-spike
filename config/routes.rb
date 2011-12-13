Html5Spike::Application.routes.draw do

  match '/project_list', :controller => :projects, :action => :projects_list
  match '/employee_list', :controller => :employees, :action => :employees_list
  match '/pretty', :controller => :projects, :action => :pretty

  match '/worked_on_list', :controller => :worked_ons, :action => :worked_on_list
  resources :projects
  resources :employees
  resources :worked_ons

  match '/app.appcache' => Rails::Offline
end
