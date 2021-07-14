class SubjectsController < ApplicationController

  def index
    @subjects=Subject.all
    @subject=Subject.new
  end

  def create
    @subject = Subject.create(subject_params)
    p 1111111111111111111111
    p @subject
    redirect_to subjects_path
  end

  private
    def subject_params
      params.require(:subject).permit(:name, :connected_by_id, :connected_by_type, student_id: [])
    end
end
