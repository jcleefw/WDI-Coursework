class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find params[:id]
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    # params[:dish] #mass assignment
    # @dish.title = params[:title]
    # @dish.image_url = params[:image_url]
    if @dish.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @dish = Dish.find params[:id]
  end

  def update
    @dish = Dish.find params[:id]

    # @dish.title = params[:title]
    # @dish.image_url = params[:image_url]
    if @dish.update(dish_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  def destroy
    @dish = Dish.find params[:id]
    @dish.destroy
    redirect_to '/'
  end

  def dish_params
    # this is use to prevent hack
    params.require(:dish).permit(:title, :image_url, :photo, :remote_photo_url, :tag_ids => [])
  end
end