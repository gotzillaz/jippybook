class Admin::InventoryController < ApplicationController
  def index
    @book = Book.all()
  end

  def create
    p "ggg"
    @book = Book.new do |b|
      b.name = params[:book_name]
      b.description = params[:description]
      b.img = params[:book_cover]
      b.price = params[:price]
      b.category_id = params[:category_id]
    end
    @book.save
    redirect_to '/admin/inventory'
  end

  def new
    @book = Book.new
    @category_list = Category.all()
  end
 
end
