class LobbiesController < ApplicationController
    before_action :set_lobby, only: [:show, :destroy]
    
    def index
        @lobbies = Lobby.all
        render json: @lobbies
    end

    def show
         render json: @lobby
    end 

    def create 
        lobby = Lobby.create(lobby_params)
        render json: lobby, status: 200
    end 

    def destroy
        @lobby.destroy
    end

    private 

    def set_lobby
        @lobby = Lobby.find(params[:id])
    end 

    def lobby_params
        params.require(:lobby).permit(:region, :platform, :gamemode, :description, :mic_required, :skill_level)
    end 
end
