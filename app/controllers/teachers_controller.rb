class TeachersController < ApplicationController
  def index
    @teachers=Teacher.all
    @teacher=Teacher.new
  end

  def create
    @teacher=Teacher.create(teacher_params)
    redirect_to teachers_path
  end

  private
    def teacher_params
      params.require(:teacher).permit(:name, :connected_by_id, :connected_by_type, :subject_id)
    end
end
