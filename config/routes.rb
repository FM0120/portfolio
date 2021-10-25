Rails.application.routes.draw do
  devise_for :users
   root to: 'recipes#index'
    resources :users,only:[:index,:edit,:create,:destroy,:update]
    resources :homes,only:[:top]
    resources :recipes,only: [:index,:new,:show,:edit,:create,:update,:destroy] do
     resources :makings,only: [:edit,:create,:destroy,:update]
     resources :post_comments, only: [:new, :create, :index, :show, :destroy]
     resources :favorites,only: [:create,:destroy]
     resources :relathionsips,only: [:create,:destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
