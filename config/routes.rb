Rails.application.routes.draw do
  resources :channels
  resources :discussions do
    resources :replies
  end
  get 'home/index'
  devise_for :users, controllers: {
        resgistrations: 'users/registrations'
      }
  
  root to: "home#index"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
