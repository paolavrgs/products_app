Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  
  scope module: :app do
    get '/', to: 'front#index', as: :root
    get '/product/:product_id', to: 'front#product', as: :product
    resources :cotizations
  end
  
  namespace :admin do
    get '/', to: 'dashboard#index'
    resources :products
    resources :cotizations
  end

end
