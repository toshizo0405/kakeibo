class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
    @book.year = 2019
  end

  def create
    book_params = params.require(:book).permit(:year, :month, :inout, :category, :amount)
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "家計簿にデータが1件登録しました。"
      redirect_to books_path
    else
      flash.now[:alert] = "登録に失敗しました。"
      render :new
    end
  end

    def edit
      @book = Book.find(params[:id])
    end

    def update
      @book = Book.find(params[:id])
      book_params = params.require(:book).permit(:year, :month, :inont, :category, :amount)
      if @book.update(book_params)
        flash[:notice] = "データを1件更新しました。"
        redirect_to books_path
      else
        flash.now[:alert] = "更新に失敗しました。"
        render :edit
      end
    end

    def destroy
      @book = Book.find(params[:id])
      @book.destroy
      flash[:notice] = "削除しました。"
      redirect_to books_path
    end
end
