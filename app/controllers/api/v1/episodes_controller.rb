module Api
  module V1
    class EpisodesController < ApplicationController
      def index
        render json: Episode.all
      end

      def show
        episode = Episode.find(params[:id])
        render json: episode
      end

      def update
        episode = Episode.find(params[:id])
        episode.update_from_params(episode_params)
        render json: episode
      end

      private

        def episode_params
          params.require(:episode).permit(:name, :air_date, :description, :writers => [:id, :name], :season => [:number])
        end
    end
  end
end