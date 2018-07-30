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
    get '/menus', to: "menus#index", as: "menus"
    get '/menus/delivery', to: "menus#delivery", as: "delivery"
    get '/menus/delivery/payment', to: "menus#payment", as: "payment"

    put 'profile/cancel_delivery', to: "menus#cancel_delivery", as: "cancel_delivery"
    put 'subscriptions/unsubscribe', to: "subscriptions#unsubscribe", as: "unsubscribe"
    put '/subscriptions/:id/subscribe', to: "subscriptions#subscribe", as: "subscribe"
    put '/menus/:id/select', to: "menus#select_menu", as: "select_menu"
    put '/menus/unsubscribe', to: "menus#unselect_menu", as: "unselect_menu"
    patch '/menus/delivery/confirm', to: "menus#select_delivery", as: "select_delivery"

    
    resources :users
  
    
  end
  