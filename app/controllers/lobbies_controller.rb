class LobbiesController < ApplicationController
    before_action :set_lobby, only: [:show, :destroy]
    
    def index
        @lobbies = Lobby.all
        render json: LobbySerializer.new(@lobbies).serializable_hash[:data].map{|hash| hash[:attributes] }
    end

    def show
        @lobby_data = {data: @lobby, user: @lobby.user}
         render json: @lobby_data
    end 

    def create 
        lobby = Lobby.new(lobby_params)
        lobby.save
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
        params.require(:lobby).permit(:gamertag, :region, :platform, :gamemode, :description, :mic_required, :skill_level, :user_id)
    end 
end
