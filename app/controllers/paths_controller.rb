class PathsController < ApplicationController
  def create
    Path.create!(params.require(:path).permit!)

    redirect_back_or_to "/"
  end
end