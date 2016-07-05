Rails.application.routes.draw do
  
  devise_for :people, controllers: {
    registrations: 'people/registrations',
    omniauth_callbacks: 'people/omniauth_callbacks'
  }

  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/terms'
  get 'static_pages/policies'
  get 'static_pages/help'
  get 'static_pages/trust'

  resources :people, only: [:index, :show, :destroy]
end
