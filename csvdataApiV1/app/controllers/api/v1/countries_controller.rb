module Api
  module V1
    class CountriesController < ApplicationController
      before_action :authenticate, only: [:create, :destroy]
      include ActionController::HttpAuthentication::Token::ControllerMethods
      def index
        @countries = Country.all

        render json: @countries
      end

      #create country
      def create
        @country = @user.countries.new(:Cid => params[:Cid], :name => params[:name], :latitude => params[:latitude],
                                       :longitude => params[:longitude])
        if @country.save
          render json: @country, status: :created
        else
          render json: @country.errors, status: :unprocessable_entity
        end
      end

      # Delete county
      def destroy
        @country = @user.countries.find_by(params[:id])
        if @country
          @country.destroy
        else
          render json: {post: "not found"}, status: :not_found
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