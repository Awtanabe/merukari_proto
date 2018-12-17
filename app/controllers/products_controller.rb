class ProductsController < ApplicationController
 def index
  render text:"yahoo"
 end

 def new
  @product = Product.new(product_params)
 end


 private

 def product_params
   require.prams.perimt(:name,:price,:description,:category_type,user_id: current_user.id)
 end

end
