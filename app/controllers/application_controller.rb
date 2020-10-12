class ApplicationController < ActionController::Base

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book)
    book.save
    redirect_to book_path(book.id)
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to book_path  # 投稿一覧画面へリダイレクト
  end

  private

  def book
    params.require(:book).permit(:title, :body, :image)
  end
end
