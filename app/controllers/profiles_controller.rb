class ProfilesController < ApplicationController
  def show
    @student = Student.find(params[:student_id])

    render locals: { profile: @student.profile }
  end

  def new
    @student = Student.find(params[:student_id])
  end

  def create
    student = Student.find(params[:student_id])

    Profile.create!(params.require(:profile).permit!)

    redirect_to student_profile_path(student)
  end
end