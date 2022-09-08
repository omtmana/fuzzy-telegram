class VendorSweetsController < ApplicationController

   def create
      vendor_sweet = Vendor_Sweet.create!(vendor_sweet_params)
      if vendor_sweet.valid?
         render json: vendor_sweet.sweets, status: :created
      else
         render json: {errors: 'validation errors'}, status: 422
      end
   end

   def destroy
      vendor_sweet = Vendor_Sweet.find_by(id: params[:id])
      if !vendor_sweet.nill?
         vendor_sweet.destroy
         render json: {}
      else
         render json: {error: 'VendorSweet not found'}, status: 404
      end
   end

   private

   def vendor_sweet_params
      params.permit(:price, :vendor_id, :sweet_id)
   end
end
