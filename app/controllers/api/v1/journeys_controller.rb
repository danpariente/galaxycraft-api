module API
  module V1
    class JourneysController < BaseController
      def show
        journey = Journey.find(params[:id])

        render json: journey
      end
    end
  end
end