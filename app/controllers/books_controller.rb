class BooksController < ApplicationController
  def index
    @book = Book.new
    @mybooks = current_user.books
    @books = Book.all - @mybooks
    @likes = current_user.likes
  end
  
  def create
    @book = Book.new(params[:book]) 

    if @book.save 
      like = Like.new
      like.user_id = current_user.id
      like.book_id = @book.id
      like.save
      redirect_to :books 
    else
      redirect_to :books 
    end
  end
  
  def like
    @book = Book.find(params[:id])
    like = Like.new
    like.user_id = current_user.id
    like.book_id = @book.id
    like.save
    redirect_to :back
  end
  
  def unlike
    #@book = Book.find(params[:id])
  end
  
end
