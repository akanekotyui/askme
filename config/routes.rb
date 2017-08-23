Rails.application.routes.draw do
  root 'top#index'
  get 'infomation_index', to: 'infomation#infomation_index'
  get 'reply_index', to: 'reply#reply_index'
end
