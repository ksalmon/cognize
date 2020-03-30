# frozen_string_literal: false

module Api
  module V1
    class UsersController < ApplicationController
      before_action :find_user, except: :index

      def index
        @users = User.all
        render json: @users, each_serializer: Api::V1::UserSerializer
      end

      def show
        render json: @user, serializer: Api::V1::UserSerializer
      end

      def update
        @user.update!(user_params)
        render json: @user, serializer: Api::V1::UserSerializer
      end

      private

      def find_user
        @user = User.find(params[:id]) 
      end

      def user_params
        params.require(:user).permit(:name, :username, :email, :avatar, :github)
      end
    end
  end
end
