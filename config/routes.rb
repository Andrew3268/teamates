Rails.application.routes.draw do
  resources :blogs
  resources :posts
  resources :teams, except: [:index] #index페이지를 사용하지 않을 경우 except: [:index]를 사용하면 라우트 주소에서 배제된다.
  resources :users, only: [:index, :show]

  # root 'home#index'
  # root 'posts#index'
  root 'blogs#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
