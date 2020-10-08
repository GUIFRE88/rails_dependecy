class ItemPedidosController < ApplicationController
  before_action :set_item_pedido, only: [:show, :edit, :update, :destroy]
  before_action :set_pedido

  # GET /item_pedidos
  # GET /item_pedidos.json
  def index
    @item_pedidos = ItemPedido.where(pedido_id: @pedido.id)
  end

  # GET /item_pedidos/1
  # GET /item_pedidos/1.json
  def show
  end

  # GET /item_pedidos/new
  def new
    @item_pedido = ItemPedido.new
  end

  # GET /item_pedidos/1/edit
  def edit
  end

  # POST /item_pedidos
  # POST /item_pedidos.json
  def create
    @item_pedido = ItemPedido.new(item_pedido_params)
    @item_pedido.pedido = @pedido

    respond_to do |format|
      if @item_pedido.save
        format.html { redirect_to pedido_item_pedido_path(@pedido,@item_pedido), notice: 'Item pedido was successfully created.' }
        format.json { render :show, status: :created, location: @item_pedido }
      else
        format.html { render :new }
        format.json { render json: @item_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_pedidos/1
  # PATCH/PUT /item_pedidos/1.json
  def update
    respond_to do |format|
      if @item_pedido.update(item_pedido_params)
        format.html { redirect_to pedido_item_pedido_path(@pedido,@item_pedido), notice: 'Item pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_pedido }
      else
        format.html { render :edit }
        format.json { render json: @item_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_pedidos/1
  # DELETE /item_pedidos/1.json
  def destroy
    @item_pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedido_item_pedidos_url, notice: 'Item pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_pedido
    @pedido = Pedido.find(params[:pedido_id])
  end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_item_pedido
      @item_pedido = ItemPedido.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_pedido_params
      params.require(:item_pedido).permit(:pedido_id, :valor)
    end
end
