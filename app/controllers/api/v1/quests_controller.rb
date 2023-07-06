module API
  module V1
    class QuestsController < BaseController
      def index
        journey = Journey.find(params[:journey_id])

        render json: journey.quests
      end

      def show
        journey = Journey.find(params[:journey_id])

        render json: QuestSerializer.new(journey.quests.find_by(id: params[:id]))
      end
    end
  end
end