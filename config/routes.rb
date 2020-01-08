Rails.application.routes.draw do
  root :to => 'home#index'
  get "/restricter", :to => 'file#restricter'
  get "/pincodes", :to => 'home#pincodes'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
