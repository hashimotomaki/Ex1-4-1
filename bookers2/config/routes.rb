Rails.application.routes.draw do

  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  get 'user/follows/:id' => 'relationships#follows', as: 'follows'
  get 'user/followers/:id'=> 'relationships#followers', as: 'followers'
end
