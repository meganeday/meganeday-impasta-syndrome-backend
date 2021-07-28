class UsersController < ApplicationController

    def create 
        user = User.create(user_params)
        if user.valid?
            render json:user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {error: "username or password is incorrect"}
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end

end
