class ProductsController < ApplicationController
 def index

 end

 def new
  @product = Product.new(product_params)
 end

 def search


 end


 private

 def product_params
   require.prams.perimt(:name,:price,:description,:category_type,user_id: current_user.id)
 end

end
