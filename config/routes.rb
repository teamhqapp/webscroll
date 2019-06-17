Rails.application.routes.draw do

  devise_for :authors, path: "a", skip: [:registrations]

  get 'home/index'

  resources :articles do
    patch "publish" => "articles/publish#update", on: :member
  end

  resource :blog, only: [:edit, :update]

  get "post/:slug" => "post#show", as: :post

  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
