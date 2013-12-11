Spree::Core::Engine.routes.draw do

  namespace :admin do
    resources :promo_slots
  end

end