class CartsController < ApplicationController
skip_before_action :verify_authenticity_token
  def index
  end

  def create
    if Cart.find_by_user_id(params[:user_id])
       Cart.find_by_user_id(params[:user_id]).update(order_params)
    else
       Cart.create(order_params)
    end
    puts "successfully"
    puts order_params
  end

  def create_order
   Order.create(params[:user_id , product_ids: []])
   @cart=Cart.find_by_user_id(params[:user_id])
   @cart.delete(order_params)
  end




  private
  def order_params
    params.permit(:user_id, :product_ids)
  end
end
