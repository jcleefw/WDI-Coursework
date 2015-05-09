class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to '/tags/'
    else
      render :new
    end
  end

  def tag_params
    params.require(:tag).permit(:name)
  end

  def edit
    @tag = Tag.find params[:id]
  end

  def update
    @tag = Tag.find params[:id]
    if @tag.update(tag_params)
      redirect_to '/tags/'
    else
      render :edit
    end
  end

  def destroy
    @tag = Tag.find params[:id]
    @tag.destroy
    redirect_to '/tags/'
  end

end