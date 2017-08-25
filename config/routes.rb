Rails.application.routes.draw do
  resources :dictionaries
  resources :words
  resources :advises
  resources :answers
  resources :question_part_twos
  resources :question_part_ones
  root 'top#index'
  get  '/manage',           to: "manage#index"
  get  '/infomation_index', to: 'infomation#infomation_index'
  get  '/reply_index',      to: 'reply#reply_index'
  get  '/ask/index/:q1_id', to: 'ask#index'
  get  '/dictionaris/index', to: 'dictionaries#index'
end
