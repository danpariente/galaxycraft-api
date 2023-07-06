module API
  module V1
    class AssignmentsController < BaseController
      def show
        assignment = Assignment.find_by(student_id: params[:student_id], quest_id: params[:quest_id])

        render json: assignment
      end
    end
  end
end