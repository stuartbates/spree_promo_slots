module Spree
  class PromoSlot < ActiveRecord::Base
    attr_accessible :description, :link_url, :product_id, :slot_type, :title
    has_one :product
  end
end
