class UsersController < ApplicationController

# Loading the signup form
    def new
        @user = User.new
    end

# Signup
    def create
        @user = User.new(user_params)
        if @user.save 
            #login
            session[:user_id] = @user.id
            redirect_to routines_path
            # redirect_to users_path
        else
            render :new
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
