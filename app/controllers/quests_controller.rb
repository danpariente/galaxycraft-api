class QuestsController < ApplicationController
  def show
    @quest = Quest.find(params[:id])
    @student = Student.find(params[:student_id])
    @assignment = Assignment.where(quest: @quest, student: @student).first_or_initialize
  end

  def index
    @student = Student.find(params[:student_id])
    @journey = @student.journeys.first
    @quests = @journey&.quests
  end

  def new
    @quests = Quest.all
  end

  def create
    Quest.create!(params.require(:quest).permit!)

    redirect_back_or_to "/"
  end
end