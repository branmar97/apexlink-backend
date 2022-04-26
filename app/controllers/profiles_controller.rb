class ProfilesController < ApplicationController
    before_action :set_profile, only: [:show]

    def show 
        render json: ProfileSerializer.new(@profile).serializable_hash[:data][:attributes]
    end

    private 

    def set_profile 
        @profile = Profile.find_by(slug: params[:id])
    end

    def profile_params 
        params.require(:profile).permit(:bio, :link)
    end 
end
