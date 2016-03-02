module Api
  module V1
    class WritersController < ApplicationController
      def index
        render json: Writer.all
      end

      def show
        writer = Writer.find(params[:id])
        render json: writer
      end
    end
  end
end