module Api
  module V1
    class CountrydbsController < ApplicationController
      before_action :authenticate, only: [:create, :destroy]
      include ActionController::HttpAuthentication::Token::ControllerMethods
      def index


        @countrydbs = CountryDb.all


      end

      def create
        #No time
        @countrydb = @user.countryDbs.new()
        if @countrydb.save
          render json: @countrydb, status: :created
        else
          render json: @countrydb.errors, status: :unprocessable_entity
        end
      end



      private
      def authenticate
        authenticate_or_request_with_http_token do |token, options|
          @user = User.find_by(token: token)
        end
      end
    end
  end
end

