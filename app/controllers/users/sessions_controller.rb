class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private 

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: {
        message: 'Logged in successfully.',
        data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
      }
    else
      render json: {
        message: "Invalid Email or Password"
      }, status: :unauthorized
    end
  end
  
  def respond_to_on_destroy
    if user_signed_in? 
      render json: {
        status: 200,
        message: "logged out successfully"
      }, status: :ok
    else
      render json: { 
        status: 401,
        message: "Couldn't find an active session."
      }, status: :unauthorized
    end
  end
end
