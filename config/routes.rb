Rails.application.routes.draw do
  resources :question_part_twos
  resources :question_part_ones
  root 'top#index'
end
