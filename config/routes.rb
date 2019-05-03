Rails.application.routes.draw do
  resources :guests, only: %i[new create index show destroy]
  resources :contacts, only: %i[new create index show destroy]

  get '/', to: 'home#index', as: 'root'
  get '/:id', to: 'home#test', as: 'test'
  get 'contacts/:id', to: 'contacts#new'
  post 'guests', to: 'guests#create' # AJAX

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
