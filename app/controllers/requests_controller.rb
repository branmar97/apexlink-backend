class RequestsController < ApplicationController
    before_action :set_request, only: [:destroy]
    
    def index
        @requests = Request.all
        render json: @requests
    end

    def create 
        request = Request.create(request_params)
        request.user_id = 1
        request.save
        render json: request, status: 200
    end 

    def destroy
        @request.destroy
    end

    private 

    def set_request
        @request = Request.find(params[:id])
    end 

    def request_params
        params.require(:request).permit(:lobby_id, user_id)
    end 
end
