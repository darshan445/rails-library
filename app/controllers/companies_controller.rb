class CompaniesController < ApplicationController
  def index
    @companies=Company.all
   
  end
  def new
    @company=Company.new
  end

  def edit
    @company=Company.find(params[:id])
  end

  def update
    @company=Company.find(params[:id])
    if @company.update(company_params)
      #redirect_to root_path
      respond_to do |format|
        format.js
      end
    end
  end

  def create
    @company=Company.create!(company_params)
    # redirect_to root_path
    respond_to do |format|
      format.js 
    end
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
