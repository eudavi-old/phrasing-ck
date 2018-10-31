Rails.application.routes.draw do

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts
  get "/:page" => "pages#show"
  root "posts#index"

end
