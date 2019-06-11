class BooksController < ApplicationController

  def index
    books = Book.all
    render json: { status: 'SUCCESS', message: 'Success GET books', data: books }    
  end

  def show
    book = Book.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Success GET book', data: book }
  end

  def create
    book = Book.new(book_params)
    if book.save
      render json: { status: 'SUCCESS', message: 'create book', data: book }
    else
      render json: { status: 'ERROR', message: 'book cannot created', data: book.errors }
    end
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      render json: { status: 'SUCCESS', message: 'update book', data: book }
    else
      render json: { status: 'ERROR', message: 'book cannot updated', data: book.errors }
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
