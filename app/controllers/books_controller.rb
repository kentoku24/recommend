class BooksController < ApplicationController
  def index
    @book = Book.new
    @mybooks = current_user.books
    @books = Book.all - @mybooks
    @likes = current_user.likes
    
    
    users = []
    
    # find all possible users which shares a book
    current_user.books.each do |book|
      book.users.each do |usr|
        users << usr
      end
    end
    users = users.uniq()
    bks = []
    numsOfBooks = current_user.books.length
    users.each do |usr|
      if  (usr.books & current_user.books).length >= (numsOfBooks * 0.5)
        usr.books.each do |book|
          bks << book
        end
      end
    end
    bks = bks.uniq() - current_user.books
    
    @recs = bks
    
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

end
