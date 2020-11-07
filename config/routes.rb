Rails.application.routes.draw do
  # namespace to site thediscgolfproject.com/api/v1/resource
  get '/api/v1/login', to: "api/v1/sessions#create"
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
