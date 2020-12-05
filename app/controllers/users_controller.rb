class UsersController < ApplicationController

# Loading the signup form
    def new
        @user = User.new
    end

# Signup
    def create
    end

end
