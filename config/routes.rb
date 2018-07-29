Rails.application.routes.draw do
    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
    devise_for :users, :controllers => { registrations: 'registrations' }
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "home#index"
    
    get '/profile', to: "home#profile", as: "profile"
    get '/about-us', to: "home#about", as: "about"
    get '/contact', to: "home#contact", as: "contact"
    get '/catering', to: "home#catering", as: "catering"
    get '/how-it-works', to: "home#how", as: "how"
    get '/faq', to: "home#faq", as: "faq"

    get '/subscriptions', to: "subscriptions#index", as: "subscriptions"
    get '/profile/subscription', to: "subscriptions#index", as: "edit_subscription"
    put 'subscriptions/unsubscribe', to: "home#unsubscribe", as: "unsubscribe"
    put '/subscriptions/:id/subscribe', to: "home#subscribe", as: "subscribe"
    put '/menus/:id/select', to: "home#select_menu", as: "select_menu"
    resources :menus, only: %i[index show]

    
    resources :users
  
    
  end
  