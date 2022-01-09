class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_show_path(book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.new(book_params)
    book.save
    redirect_to books_show_path(book.id)
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
