class CompaniesController < ApplicationController
  def index
    @company=Company.new
    @companies=Company.all
  end

  def create
    @company=Company.create(company_params)
    redirect_to root_path
  end

  private
    def company_params
      params.require(:company).permit(:name, :e_count, :address, projects_attributes:[:name])
    end
end
