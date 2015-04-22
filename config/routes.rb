Rails.application.routes.draw do
  devise_for :users

  #管理端
  namespace :admin do
    root 'banners#index'
    resources :banners
  end
end
