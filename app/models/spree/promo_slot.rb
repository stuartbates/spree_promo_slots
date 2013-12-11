module Spree
  class PromoSlot < ActiveRecord::Base
    attr_accessible :description, :link_url, :variant_id, :slot_type_id, :title
    belongs_to :variant
    belongs_to :slot_type
  end
end