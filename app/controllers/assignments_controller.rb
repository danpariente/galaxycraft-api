class AssignmentsController < ApplicationController
  def create
    Assignment.create!(params.merge(submitted_at: Time.current).require(:assignment).permit!)

    redirect_back_or_to "/"
  end
end