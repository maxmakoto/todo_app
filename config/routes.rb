Rails.application.routes.draw do
  resources :tags
  get 'items/new/:id', to: 'items#new', as: 'new_item'
  get 'list/:id', to: 'items#index', as: 'items'
  post 'list/:id', to: 'items#create'
  resources :items, except: [:new, :index, :new]
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'done' => 'items#done'
end
