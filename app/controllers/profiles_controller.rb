class ProfilesController < ApplicationController
    before_action :set_profile, only: [:show, :update]

    def show 
        render json: ProfileSerializer.new(@profile).serializable_hash[:data][:attributes]
    end

    def update 
        if @profile.update(profile_params)
            render json: ProfileSerializer.new(@profile).serializable_hash[:data][:attributes]
        else 
            render json: @profile.errors, status: 400
        end
    end 

    private 

    def set_profile 
        @profile = Profile.find_by(slug: params[:id])
    end

    def profile_params 
        params.require(:profile).permit(:bio, :link)
    end 
end
