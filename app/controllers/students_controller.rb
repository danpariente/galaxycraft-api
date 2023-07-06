class StudentsController < ApplicationController
  def show
    @journey = Journey.find(params[:journey_id])
    @student = Student.find(params[:id])
  end
end