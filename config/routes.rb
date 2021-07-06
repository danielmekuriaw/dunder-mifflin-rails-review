Rails.application.routes.draw do
  get '/dogs/most_employees', to: 'dogs#most_employees'

  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
