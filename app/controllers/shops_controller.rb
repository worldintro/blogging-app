class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]

  "here is message in dima commit"
  "here is message for update in dima commit"


  "here is new changes in dima commit"

  # GET /shops
  # GET /shops.json
  def index
    @shops = Shop.all
  end
  "changes after other mr"

  # GET /shops/1
  # GET /shops/1.json
  def show
  end

  "my changes"

  # GET /shops/new
  def new
    @shop = Shop.new
  end

  "my new changes "
  # GET /shops/1/edit
  def edit
  end
  "my new changes 2"
  # POST /shops
  # POST /shops.json
  def create
    @shop = Shop.new(shop_params)
    "lalala"
    "lalalla2"
    "searchdocker start"
    respond_to do |format|
      if @shop.save
        format.html { redirect_to @shop, notice: 'Shop was successfully created.' }
        format.json { render :show, status: :created, location: @shop }
      else
        format.html { render :new }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shops/1
  # PATCH/PUT /shops/1.json
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        format.html { redirect_to @shop, notice: 'Shop was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop }
      else
        format.html { render :edit }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shops/1
  # DELETE /shops/1.json
  def destroy
    @shop.destroy
    respond_to do |format|
      format.html { redirect_to shops_url, notice: 'Shop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  "asndklasndlknasd"


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).permit(:name)
    end
end
