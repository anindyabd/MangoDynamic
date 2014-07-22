class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /orders
  # GET /orders.json
  def index
    @orders = current_user.orders.limit(5)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = InvoicePdf.new(@order, view_context)
        send_data pdf.render, filename: "invoice_#{@order.created_at.strftime("%d/%m/%Y")}.pdf", 
                              type: "application/pdf", disposition: 'inline'
      end
    end
    
  end

  # GET /orders/new
  def new
    @cart = current_cart
    if @cart.line_items.empty?
      redirect_to store_url, notice: "You cart is empty"
      return
    end
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(current_cart)
    @order.calculate_total(current_cart)
    @order.user_id = current_user.id
    respond_to do |format|
      if @order.save
        @user = current_user
        pdf = InvoicePdf.new(@order, view_context)
        @attachment = pdf.render 
        UserMailer.checkout_email(@user, @attachment).deliver
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        @cart = current_cart
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :email, :college_name, :address, :plan_type, :phone_number, :state, :zip_code, :city)
    end
end
