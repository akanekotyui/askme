Rails.application.routes.draw do
  resources :question_part_twos
  resources :question_part_ones
  root 'top#index'
  get  '/manage',           to: "manage#index"
  get  '/infomation_index', to: 'infomation#infomation_index'
  get  '/reply_index',      to: 'reply#reply_index'
end
