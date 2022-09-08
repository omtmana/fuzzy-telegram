class VendorsController < ApplicationController
#      get '/vendors', to: 'vendors#index'
#   get '/vendors/:id', to: 'vendors#show'

   def index
      render json: Vendor.all
   end

   def show
      vendor = Vendor.find_by(id: params[:id])
      if show
         render json: vendor, serializer: VendorRelationshipSerializer 
      else
         render json: {error: 'Vendor not found'}, status: 404
      end
   end

end
