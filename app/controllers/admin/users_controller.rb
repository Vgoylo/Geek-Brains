module Admin 
  class UsersController < ApplicationController 
    def index
      @users = User.all
    end

    def show
      @user = User.find(user_params[:id])
    end

    def destroy
      @user = User.find(params[:id])
  
      if @user.destroy
        flash[:success] = 'Success'
        redirect_to users_path
      else
        flash[:error] = 'Error'
      end
    end

    private 

    def user_params
      params.require(:user).permit(:name)
    end
  end
end
