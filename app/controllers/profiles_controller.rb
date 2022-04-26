class ProfilesController < ApplicationController

    private 

    def set_profile 
        Profile.find_by(slug: params[:id])
    end
end
