Rails.application.routes.draw do
  resources :trades
  get 'trades/open_positions'
  get 'welcome/index'
  root 'welcome#index'
end
