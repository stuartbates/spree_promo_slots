Spree::Core::Engine.routes.draw do

  namespace :admin do
    resources :promo_slots, :except => [:show] do
      collection do
        post :update_positions
      end
    end
  end

end