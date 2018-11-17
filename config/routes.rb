Rails.application.routes.draw do
  root to: "listings#index"
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :trips
  resources :saves
  resources :pictures
  resources :listings do
    member do
      put "like", to: "listings#upvote"
      put "dislike", to: "listings#downvote"
    end
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
