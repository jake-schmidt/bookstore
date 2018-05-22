class BooksController < ApplicationController

  def index
    books = Book.all
    #redirect_to "https://www.google.com"
  end

  def show

  end

  def destroy
    Book.delete(params["id"])
    redirect_to "/books", notice: "That book is toast!"
  end

  def new
    if session["user_id"] == nil
      redirect_to "/", notice: "Nice try."
    end
  end

  def create
    Book.create title: params["title"],
                price: (params["price"].to_f * 100).to_i,
                author_id: params["author_id"],
                summary: params["summary"],
                photo_url: params["photo_url"]

    redirect_to "/books", notice: "Thanks for adding a book!"
  end

  def edit

  end

  def update
    book = Book.find_by(id: params["id"])

    book.update title: params["title"],
                summary: params["summary"],
                author_id: params["author_id"],
                photo_url: params["photo_url"],
                price: params["price"].to_f * 100

    redirect_to "/books/#{book.id}", notice: "Book updated."
  end

end
