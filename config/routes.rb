Rails.application.routes.draw do
  root 'welcome#home'
  get 'welcome/about',to:'welcome#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
