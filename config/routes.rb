Rails.application.routes.draw do

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :s_lessons

  devise_for :users
  get 'home/index'
  root to: "home#index"
  # get 'contacts/index'
  # get 'contacts' => 'contacts#new'
  resources :technologies do
    resources :lessons
  end
  # https://guides.rubyonrails.org/routing.html
end
