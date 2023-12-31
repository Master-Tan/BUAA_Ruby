class DeliveryOrdersController < ApplicationController
  before_action :set_delivery_order, only: %i[ show edit update destroy ]

  # GET /delivery_orders or /delivery_orders.json
  def index
    @delivery_orders = DeliveryOrder.all
  end

  # GET /delivery_orders/1 or /delivery_orders/1.json
  def show
  end

  # GET /delivery_orders/new
  def new
    @delivery_order = DeliveryOrder.new
  end

  # GET /delivery_orders/1/edit
  def edit
  end

  # POST /delivery_orders or /delivery_orders.json
  def create
    @delivery_order = DeliveryOrder.new(delivery_order_params)

    respond_to do |format|
      if @delivery_order.save
        format.html { redirect_to delivery_order_url(@delivery_order), notice: "Delivery order was successfully created." }
        format.json { render :show, status: :created, location: @delivery_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @delivery_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_orders/1 or /delivery_orders/1.json
  def update
    respond_to do |format|
      if @delivery_order.update(delivery_order_params)
        format.html { redirect_to delivery_order_url(@delivery_order), notice: "Delivery order was successfully updated." }
        format.json { render :show, status: :ok, location: @delivery_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @delivery_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_orders/1 or /delivery_orders/1.json
  def destroy
    @delivery_order.destroy

    respond_to do |format|
      format.html { redirect_to delivery_orders_url, notice: "Delivery order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_order
      @delivery_order = DeliveryOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_order_params
      params.require(:delivery_order).permit(:transaction_order_id, :deliver, :added_time, :arrival_time)
    end
end
