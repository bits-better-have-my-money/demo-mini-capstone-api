class OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders, include: "carted_products.product"
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end
    calculated_tax = calculated_subtotal * 0.09 
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )

    if order.save
      carted_products.update_all(order_id: order.id, status: "purchased")
      render json: order, include: "carted_products.product"
    else
      render json: order.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    order = Order.find(params[:id])
    if order.user_id == current_user.id
      render json: order, include: "carted_products.product"
    else
      render json: {message: "That is not your order!"}, status: 401
    end
  end

end
