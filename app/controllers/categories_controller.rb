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

  def show
  end

  def create
    @category = Category.new(category_parms)
    if @category.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def destroy
    @user = Category.find(params[:id])
    if @user.destroy
      redirect_to :action => 'index'
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_parms)
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end

  private

  def category_parms
    params.require(:category).permit(:category_name)
  end

end
