Rails.application.routes.draw do
  resources :articles
  devise_for :users, :controllers => { registrations: 'registrations' }
 root to: "pages#index"

 get 'pages/contact'
 get 'pages/about'
end
