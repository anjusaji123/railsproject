class ProductController < ApplicationController

   def index
     @products = Product.all
   end

   def data
     @products = Product.all

     response = {response => @products}
     render json: @products
   end

def search
  @details= Product.where(category: "fashion")
  response = {response => @details}
  render json: @details

end

def unique
 @details=Product.select(:category).map(&:category).uniq

  response = {response => @details}
  render json: @details

end




end
