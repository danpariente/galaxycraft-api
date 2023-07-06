class JourneysController < ApplicationController
  def show
    @journey = Journey.find(params[:id])
  end

  def new
    @journeys = Journey.all
  end

  def create
    Journey.create!(params.require(:journey).permit!)

    redirect_back_or_to "/"
  end
end
