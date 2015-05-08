class Admin::InventoryController < ApplicationController
  def index
    @book = Book.all()
  end

  def create
    @book = Book.new do |b|
      b.name = params[:book][:name]
      b.description = params[:book][:description]
      b.img = params[:book][:img]
      b.img = params[:book][:price]
    end
    @book.save
    render 'new' 
  end

  def new
    @book = Book.new
    @category_list = Category.all()
  end
 
end
