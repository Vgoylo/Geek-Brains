# frozen_string_literal: true

module Admin
  class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
    end

    def destroy
      @user = User.find(params[:id])
      TwoJob.perform_at(1.minutes, @user.email)

      if @user.destroy
        flash[:success] = 'Success'
        redirect_to admin_users_path
      else
        flash[:error] = 'Error'
      end
    end

    private

    def user_params
      params.require(:user).permit(:email)
    end
  end
end
