Rails.application.routes.draw do
  resources :questions
  root 'questions#index'
  
  get 'home/about'
end
