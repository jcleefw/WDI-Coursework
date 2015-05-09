class DishesController < ApplicationController

  def home

  end
  def index
    sleep 4
    dishes = [{
      title: 'cakepudding',
      starCount: 5
    },
    {
      title: 'beer muffin',
      starCount: 9
    }]

    render :json => dishes.to_json
  end

end