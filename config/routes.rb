Rails.application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'
  devise_for :users

  #管理端
  namespace :admin do
    root 'banners#index'
    resources :banners
    resources :pages
  end
end
