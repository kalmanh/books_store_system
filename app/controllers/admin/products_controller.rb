class Admin::ProductsController < AdminController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash[:success] = t "create_success"
      redirect_to root_url
    else
      flash[:danger] = t "create_product_failse"
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit :title, :category_id, :publisher_name,
      :author_name, :num_exist, :price, :picture, :description
  end
end
