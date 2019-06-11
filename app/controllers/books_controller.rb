class BooksController < ApplicationController

  def index
    books = Book.all
    render json: { message: 'SUCCESS GET books', data: books }    
  end

  def show
    book = Book.find(params[:id])
    render json: { message: 'SUCCESS GET book', data: book }
  end

  def create
    book = Book.new(book_params)
    if book.save
      render json: { message: 'SUCCESS create book', data: book }
    else
      render json: { message: 'ERROR book cannot created' }
    end
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      render json: { message: 'SUCCESS update book', data: book }
    else
      render json: { message: 'ERROR book cannot updated' }
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    render json: { status: 'SUCCESS', message: 'delete book', data: book }
  end

  private

  def book_params
    params.require(:book).permit(:title, :description)
  end
end
