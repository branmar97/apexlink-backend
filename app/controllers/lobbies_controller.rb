class LobbiesController < ApplicationController
    before_action :set_lobby, only: [:show, :update, :destroy]
    
    def index
        @lobbies = Lobby.all
        render json: LobbySerializer.new(@lobbies).serializable_hash[:data].map{|hash| hash[:attributes] }
    end

    def show
         render json: LobbySerializer.new(@lobby).serializable_hash[:data][:attributes]
    end 

    def create 
        lobby = Lobby.new(lobby_params)
        if lobby.save
            render json: LobbySerializer.new(lobby).serializable_hash[:data][:attributes]
        else 
            render json: lobby.errors, status: 400
        end
    end 

    def update 
        @lobby.update_attribute(:live, false)
        render json: LobbySerializer.new(@lobby).serializable_hash[:data][:attributes]
    end

    def destroy
        @lobby.destroy
    end

    private 

    def set_lobby
        @lobby = Lobby.find(params[:id])
    end 

    def lobby_params
        params.require(:lobby).permit(:region, :platform, :gamemode, :description, :mic_required, :skill_level, :user_id)
    end 
end
