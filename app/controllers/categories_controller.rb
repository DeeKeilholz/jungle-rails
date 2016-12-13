# A frequent practice is to place the standard CRUD actions in each controller
# in the following order: index, show, new, edit, create, update and destroy
# public methods must be placed before private or protected methods

class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

end
