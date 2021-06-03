class RequestsController < ApplicationController
    before_action :set_request, only: [:destroy]
    
    def index
        @requests = Request.all
        render json: RequestSerializer.new(@requests).serializable_hash[:data].map{|hash| hash[:attributes] }
    end

    def create 
        request = Request.create(request_params)
        if request.save
            render json: request, status: 200
        else
            render json: request.errors, status: 400
        end
    end 

    def destroy
        @request.destroy
    end

    private 

    def set_request
        @request = Request.find(params[:id])
    end 

    def request_params
        params.require(:request).permit(:gamertag, :description, :lobby_id, :user_id)
    end 
end
