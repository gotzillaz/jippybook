class Admin::CategoryController < ApplicationController
	def index
	end
  
  def create 
    p params[:category_name]
    @category = Category.new do |c|
      c.name = params[:category_name]
    end
    @category.save
    p @category.errors.any?
    p @category.errors.messages[:name]
    render 'new'
    #redirect_to '/admin/category/new'
  end
  
  def new
    @category = Category.new
  end
end
