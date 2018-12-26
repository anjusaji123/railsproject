class ProductController < ApplicationController
  skip_before_action :verify_authenticity_token

#
#   def addtocart
#     user_id= params["userid"]
#     product_id= params["productid"]
#     quantity=params["quantity"]
#     binding.irb
#     Order.create(:user_id => user_id , :product_id => product_id, :quantity => quantity, :ordered =>false)
#   end
# def placeorder
#   user_id= params["user_id"]
#   product_id= params["product_id"]
#   order=Order.where("user_id = ? and product_id = ?" , user_id, product_id).last
#   order.ordered=true
#   order.save
# end
#
# def myorders
#   user_id= params[:user_id]
#    products_ids= Order.where("user_id = ? and ordered =true", user_id).pluck(:product_id)
#
#    # myorder=Product.where("user_id = ?",   products_ids).last
#    myorderarray=products_ids.map { |id| Product.select("price").where("id = ?",id)}
#    # sum=Product.sum(:price,:conditions => { :id =>products_ids })
#
# end
#
#   def show
#
#     @product= Product.all
#     render json: @product.to_json
#     # render json: {
#     #             items: @product.to_json
#     #             }
#   end
  def show_by_id
    id=params[:id]

     @product= Product.find_by_id(id)
    #@product=Product.select("name,category,brand,description,price").where("id= ?",id)
    render json: @product.to_json

  end
# def show_by_category
#   category_name= params["category"]
#   showdetails= Product.where("category = ?",category_name)
#   render json: showdetails.to_json
#
# end

end
