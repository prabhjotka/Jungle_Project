class CategoriesController < ApplicationController
 
  
  def show
    @category = Category.find(params[:id])
    @category = @category.products.order(created_at: :desc)
  end

end
