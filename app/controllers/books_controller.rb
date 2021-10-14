class BooksController < ApplicationController
  def index
    @booksshow = Book.all
    @book = Book.new
    
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
    flash[:alert] = "Book was successfully created."
    redirect_to book_path(@book.id)
    else
    @booksshow = Book.all
    render :index
    
    end
  end
  
  def show
    @book = Book.find(params[:id])
  end  
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    flash[:alert] = "Book was successfully update."
    redirect_to book_path(@book)
    else
    render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path(book)
    flash[:alert] = "Book was successfully destroyed."
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end
