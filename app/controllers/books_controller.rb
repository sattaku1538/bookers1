class BooksController < ApplicationController
  def index
    @booksshow = Book.all
    @bookscreate = Book.new
  end
  
  def show
  end
  
  def create
    books = Book.new(books_params)
    books.save
    redirect_to '/show'
  end

  def edit
  end

  def destroy
  end
  
  private
  def books_params
    params.require(:book).permit(:title,:body)
  end

end
