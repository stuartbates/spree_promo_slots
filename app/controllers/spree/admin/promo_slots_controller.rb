module Spree
  module Admin
    class PromoSlotsController < ResourceController
      # GET /promo_slots
      # GET /promo_slots.json
      def index
        respond_with(@collection)
      end

      # GET /promo_slots/new
      # GET /promo_slots/new.json
      def new
        @promo_slot = PromoSlot.new

        respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @promo_slot }
        end
      end

      # GET /promo_slots/1/edit
      def edit
        @promo_slot = PromoSlot.find(params[:id])
      end

      # POST /promo_slots
      # POST /promo_slots.json
      def create
        @promo_slot = PromoSlot.new(params[:promo_slot])

        respond_to do |format|
          if @promo_slot.save
            format.html { redirect_to edit_admin_promo_slot_path(@promo_slot), notice: 'Promo slot was successfully created.' }
            format.json { render json: @promo_slot, status: :created, location: @promo_slot }
          else
            format.html { render action: "new" }
            format.json { render json: @promo_slot.errors, status: :unprocessable_entity }
          end
        end
      end

      # PUT /promo_slots/1
      # PUT /promo_slots/1.json
      def update
        @promo_slot = PromoSlot.find(params[:id])
        p params
        respond_to do |format|
          if @promo_slot.update_attributes(params[:promo_slot])
            format.html { redirect_to edit_admin_promo_slot_path(@promo_slot), notice: 'Promo slot was successfully updated.' }
            format.json { head :no_content }
          else
            format.html { render action: "edit" }
            format.json { render json: @promo_slot.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /promo_slots/1
      # DELETE /promo_slots/1.json
      def destroy
        @promo_slot = PromoSlot.find(params[:id])
        @promo_slot.destroy

        respond_to do |format|
          format.html { redirect_to promo_slots_url }
          format.json { head :no_content }
        end
      end
      
    protected 
      
      def collection
        return @collection if @collection.present?
        params[:q] ||= {}
        params[:q][:s] ||= "position ASC"
        
        @search = super.ransack(params[:q])
        @collection = @search.result.page(params[:page]).per(Spree::Config[:admin_products_per_page])
      end
      
    end
  end
end