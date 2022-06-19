class BooksController < ApplicationController


  def index
    @books=Book.all
    @book=Book.new
  end

def create
  @book=Book.new(book_params)
  if @book.save
    # ↓引数（）の中のbookは上でsaveしたbookインスタンスのidだよね？
    redirect_to book_path(@book.id)
  else
    render :index
  #フラッシュメッセージを表示させる（ググらないといけない...）
  end
end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

def update
  book=Book.find(params[:id])
  book.update(book_params)
  redirect_to book_path(book.id)
end

def destroy
  book=Book.find(params[:id])
  book.destroy
  redirect_to books_path
end

private
def book_params
  params.require(:book).permit(:title,:body)
end
end