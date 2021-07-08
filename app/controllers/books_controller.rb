class BooksController < ApplicationController
  def index
    @books=Book.all
    @book = Book.new
  end


  def create
    @book=Book.create(book_params)
    redirect_to books_path
  end


  private
    def book_params
      params.require(:book).permit(:name,:author_id)
    end
end
