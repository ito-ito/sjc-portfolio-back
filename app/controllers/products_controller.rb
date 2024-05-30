class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show update destroy ]

  # GET /products
  def index
    @products = Product.all

    render json: @products, each_serializer: ProductSerializer
  end

  # GET /products/1
  def show
    render json: @product, serializer: ProductSerializer
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    @product.save!

    render json: @product, status: :created, serializer: ProductSerializer
  end

  # PATCH/PUT /products/1
  def update
    @product.update!(product_params)

    render json: @product, serializer: ProductSerializer
  end

  # DELETE /products/1
  def destroy
    @product.destroy!
    render json: nil, status: :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:product).permit(:name, :description, :url, :image_url)
  end
end
