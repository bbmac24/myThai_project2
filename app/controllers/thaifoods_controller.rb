class ThaifoodsController < ApplicationController

  def index
    @thaifoods = Thaifood.all
  end

  def show
    @thaifood = Thaifood.find(params[:id])
    @new_comment = @thaifood.comments.new
  end

  def new
    @thaifood = Thaifood.new
  end

  def create
    @thaifood = Thaifood.new(thaifoods_params)

    if @thaifood.save
      redirect_to thaifoods_path
    else
      render :new
    end
  end

  def edit
    @thaifood = Thaifood.find(params[:id])
  end

  def update
    @thaifood = Thaifood.find(params[:id])

    if @thaifood.update(thaifoods_params)
      redirect_to thaifoods_path
    else
      render :edit
    end
  end

  # def updateRating
  #   Thaifood.find(params[:id])
  #    rating + 

  def destroy
    @thaifood = Thaifood.find(params[:id])
    @thaifood.destroy
    redirect_to thaifoods_path
  end

private

  def thaifoods_params
    params.require(:thaifood).permit(:dish, :location, :restaurant, :price_per_dish, :photo, :rating)
  end
end
