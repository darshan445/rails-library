class TutionsController < ApplicationController
  def index
    @tution=Tution.new
    @tutions=Tution.all
  end

  def create
    @tution=Tution.create(tution_params)
    redirect_to tutions_path
  end

  def destroy
    @tution=Tution.find(params[:id])
    @tution.destroy
    redirect_to tutions_path
  end


  private
    def tution_params
      params.require(:tution).permit(:name,:address)
    end
end
