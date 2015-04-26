Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  #管理端
  namespace :admin do
    root 'banners#index'
    resources :banners
    resources :pages
    resources :products
    resources :orders
  end
end
