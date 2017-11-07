Rails.application.routes.draw do
  resources :trades
  get 'welcome/index'
  root 'welcome#index'
end
