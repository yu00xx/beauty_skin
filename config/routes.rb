Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: :public do
    root to: "homes#top"
    resources :users, only: [:show, :edit, :update] do
      resources :likes, only: [:index]
    end
    resources :posts, only: [:new, :create, :show, :index, :destroy] do
      resources :comments, only: [:create, :destroy]
      resource :likes, only: [:create, :destroy]
      collection do
        get "search"
      end
    end
    get "posts/lotion" => "posts#lotion"
  end

  namespace :admin do
    resources :users, only: [:index, :show]
    resources :posts, only: [:index, :show,]
    resources :categories, only: [:index, :create, :edit]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
