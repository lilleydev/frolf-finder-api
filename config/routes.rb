Rails.application.routes.draw do
  # namespace to site thediscgolfproject.com/api/v1/resource
  post "/api/v1/login", to: "api/v1/sessions#create"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  delete "/api/v1/logout", to: "api/v1/sessions#destroy"
  namespace :api do
    namespace :v1 do 
      resources :courses
      resources :locations
      resources :bucket_lists
      resources :comments
      resources :users
      resources :activities
    end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
