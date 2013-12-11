module Spree
  class SlotType < ActiveRecord::Base
    attr_accessible :name
    has_one :has_many
  end
end