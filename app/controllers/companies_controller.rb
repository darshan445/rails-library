class CompaniesController < ApplicationController
  def index
    @company=Company.new
    @companies=Company.all
  end

  def edit
    @company=Company.find(params[:id])
  end

  def update
    @company=Company.find(params[:id])
    if @company.update(company_params)
      redirect_to root_path
    end
  end

  def create
    @company=Company.create(company_params)
    # if @company.save
    #   if params[:company][:projects].present?
    #     create_projects
    #   end
    # end

    # p 66666666666666666
    # p params[:company][:projects]
    # @company.build_project(params[:company][:projects])
    # @company.projects << @company.project.create(params[:company][:projects])
    redirect_to root_path
  end

  def destroy
    @company=Company.find(params[:id])
    @company.destroy
    redirect_to root_path
  end

  private
    def company_params
      params.require(:company).permit(:name, :e_count, :address,project_ids: [])
    end

    # def create_projects
    #   project_params = params[:company][:projects]
    #   projects = []
    #   project_params.each do |i, form_params|
    #     form_params.permit!
    #     projects << Project.create(form_params)
    #   end
    #   @company.projects << projects
    # end
end
