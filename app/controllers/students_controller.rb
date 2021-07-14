class StudentsController < ApplicationController
  def index
    @students=Student.all
    @student=Student.new
  end

  def create
    @student=Student.create(student_params)
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :class_no, subject_ids: [])
  end
end
