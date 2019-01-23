class CartsController < ApplicationController
skip_before_action :verify_authenticity_token
  def index
  end

  # def addtocart
  #     Cart.create(order_params)
  #   # if Cart.find_by_user_id(params[:user_id])
  #   #    Cart.find_by_user_id(params[:user_id]).update(order_params)
  #   # else
  #   #   Cart.create(order_params)
  #   # end
  #   puts "successfully"
  #   puts order_params
  # end
  def addtocart
     user_id= params["user_id"]
     product_id= params["product_id"]
     # url= Product.find_by_id()
     Cart.create(:user_id => user_id , :product_id => product_id)
      render json: {
        status:    200,
        response: "added  to cart sucessfully"
      }.to_json
  end

     # if Cart.find_by_user_id(user_id)
     #   puts product_id
     #    a= Cart.find_by_user_id(user_id).product_id
     #    puts a
     #   if product_id == Cart.find_by_user_id(user_id).product_id
     #
     #     render json: {
     #      status: 401,
     #       response: "already you are  added this product to your cart"
     #     }.to_json
     #   else
     #     Cart.create(:user_id => user_id , :product_id => product_id)
     #      render json: {
     #        status:    200,
     #        response: "added  to cart sucessfully first else"
     #      }.to_json
     #  end
    else



  def mycart
     user_id = params[:user_id]
     product_ids = Cart.where(user_id: user_id).map{|id| id.product_id}
     product_details = product_ids.map { |id| Product.where("id = ?",id)}
     render json:
     {
       status: 200,
       response: "success",
       data: product_details
     }.to_json

end

  def  ordernow
   # Order.create(params[:user_id , :product_id])
   # Order.create(order_params)
   user_id= params["user_id"]
   product_id= params["product_id"]
   Order.create(:user_id => user_id , :product_id => product_id)
   render json: {
      status:    200,
      response: "ordered sucessfully"
    }.to_json
   @cart=Cart.find_by_user_id(user_id)
   @cart.delete()

end

def myorders
  user_id = params[:user_id]
  product_ids = Order.where(user_id: user_id).map{|id| id.product_id}
  product_details = product_ids.map { |id| Product.where("id = ?",id)}
  render json:
  {
    status: 200,
    response: "success",
    data: product_details
  }.to_json
end

def wishlist
  user_id= params["user_id"]
  product_id= params["product_id"]

  Wish.create(:user_id => user_id , :product_id => product_id)
  render json: {
     status:    200,
     response: "added to wishlist "
   }.to_json

end
def mywish
  user_id = params[:user_id]
  product_ids = Wish.where(user_id: user_id).map{|id| id.product_id}
  product_details = product_ids.map { |id| Product.where("id = ?",id)}
  render json:
  {
    status: 200,
    response: "success",
    data: product_details
  }.to_json
end
end
#   private
#   def order_params
#     params.permit(:user_id, :product_id)
#   end
