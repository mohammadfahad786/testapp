Rails.application.routes.draw do
  resources :practices
  resources :posts
  resources :people
  devise_for :customers, :path_names=>{:sign_in => :signing}
  root to: 'students#index'
  resources :users
  resource :test
  resolve('Test') { [:test] }
  resources :students do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
