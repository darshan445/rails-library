class ProjectsController < ApplicationController
  def index
    @projects=Project.all
    @project=Project.new
  end


  def edit
    @project=Project.find(params[:id])
  end

  def create
    @project=Project.create( project_params)
    redirect_to projects_path
  end

  def update
    @project=Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    end
  end

  def destroy
    @project=Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private
    def project_params
      params.require(:project).permit(:name,company_ids: [])
    end
end
