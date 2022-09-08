class SweetsController < ApplicationController
#      get '/sweets', to: 'sweets#index'
#   get '/sweets/:id', to: 'sweets#show'
   def index
      render json: Sweet.all
   end

   def show
      sweet = Sweet.find_by(id: params[:id])
      if sweet
         render json: Sweet, status: 202
      else
         render json: {error: 'Sweet not found'}, status: 404
      end
   end
   
end
