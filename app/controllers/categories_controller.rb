class CategoriesController < ApplicationController

  def index
    @categories = Category.order(:name)
  end

  def new
    @kitten = Kitten.find(params[:kitten_id])
    @categories = Category.all
    @category = @kitten.categories.new
    @kittencategory = KittenCategory.new
  end

  def create
    p params
    @kitten = Kitten.find(params[:kitten_id])
    @category = Category.find_by(name: params[:category][:name])
    @kittencategory = KittenCategory.new(kitten_id: @kitten.id, category_id: @category.id)
    if @kittencategory.save
      redirect_to kittens_path
    else
      flash[:notice] = "Category has already been taken"
      redirect_to new_kitten_category_path(@kitten)
    end
  end

end