Rails.application.routes.draw do
  resources :trades
  get 'open_positions', to: "trades#open_positions"
  get 'welcome/index'
  root 'welcome#index'
end
