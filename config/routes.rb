# Rails.application.routes.draw do
#   get 'doses/new'
#   get 'doses/create'
#   get 'cocktails/new'
#   get 'cocktails/create'
#   get 'cocktails/index'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
