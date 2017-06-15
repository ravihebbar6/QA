Rails.application.routes.draw do
  resources :answers
  resources :questions
  root 'questions#index'
  
  get 'home/about', as: :about
end
