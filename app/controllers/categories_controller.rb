class CategoriesController < ApplicationController
  # check logged user is an admin
  before_action :check_admin
  # CRUD operations for cateogires

  def index
    @categoires = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_parms)
    if @category.save
      flash[:notice] = @category.category_name.concat('
        category successfully created')
      redirect_to action: 'index'
    else
      render action: 'new'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:notice] = @category.category_name.concat('
        category successfully deleted')
      redirect_to action: 'index'
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_parms)
      flash[:notice] = @category.category_name.concat('
        category successfully updated')
      redirect_to action: 'index'
    else
      render action: 'edit'
    end
  end

  private

  def category_parms
    params.require(:category).permit(:category_name)
  end

end
