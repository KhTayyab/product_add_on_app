class ProductConfigrationsController < ApplicationController
  before_action :set_product_configration, only: [:show, :edit, :update, :destroy]

  def index
    # if params[:shop].present?
    #   @product_configrations = ProductConfigration.where(:shop_name => params[:shop]).order('id ASC')
    # else
    #   redirect_to "https://www.google.com"
    # end
    @product_configrations = ProductConfigration.where(:shop_name => params[:shop]).order('id ASC')
  end

  def show
  end

  def new
    @product_configration = ProductConfigration.new
    @product_configration.option_count = 0
  end

  def edit
  end

  def create
    @product_configration = ProductConfigration.new(product_configration_params)
    if @product_configration.save
      redirect_to product_configrations_path(:shop => @product_configration.shop_name)
    else
      render :new
    end
  end

  def update
    if @product_configration.update(product_configration_params)
      redirect_to product_configrations_path(:shop => @product_configration.shop_name)
    else
      render :edit
    end
  end

  def get_product_detail
    product_configrations = ProductConfigration.where(:shop_name => params[:shop], :product_sku => params[:product_sku])
    # product_configrations = ProductConfigration.where(:shop_name => "", :product_sku => params[:product_sku])
    if product_configrations.count == 1
      @product_configration = product_configrations.first
      render status:200, template: 'product_configrations/get_product_detail.json.jbuilder'
    else
      render status:200, json: {:product_present => false}
    end
  end

  def destroy
    shop_name = @product_configration.shop_name
    @product_configration.destroy
    redirect_to product_configrations_path(:shop => shop_name)
  end

  private

  def set_product_configration
    @product_configration = ProductConfigration.find(params[:id])
  end

  def product_configration_params
    params.require(:product_configration).permit(:product_name, :product_sku, :option_count, :shop_name, :option1, :option2, :option3, :option4, :option5, :option6, :option7, :option8, :option9, :option10)
  end

end
