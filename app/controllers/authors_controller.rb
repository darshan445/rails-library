class AuthorsController < ApplicationController
  def index
    @authors=Author.all
  end

  def new
    @author=Author.new
    @author.books.build 
   
    # 1.times { @author.books.build }
  end

  def create
    @author=Author.create(author_params)
    redirect_to root_path
  end

  def destroy
    @author=Author.find(params[:id])
    @author.destroy
    redirect_to root_path
  end

  private
    def author_params
      params.require(:author).permit( :name, :bdate, :gender, books_attributes:[:name])
    end
end
