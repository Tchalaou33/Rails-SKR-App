class UsersController < ApplicationController

# Loading the signup form
    def new
        @user = User.new
    end

# Signup
    def create
        @user = User.new(user_params)
        if @user.save #@user.errors
            #login
            session[:user_id] = @user.id
            redirect_to routines_path
        else
            render :new
        end
    end

    # def show
    #     @user = User.find_by_id(params[:id])
    #     redirect_to '/' if !@user
    # end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
