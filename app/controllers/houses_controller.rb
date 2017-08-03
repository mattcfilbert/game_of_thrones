class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to @house, notice: "#{@house.name} was successfully founded!"
    else
      flash[:alert] = "Try again with all necessary info!"
      render :new
     end
  end

  def show
    @house = House.find(params[:id])
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    if @house.save
      redirect_to house_path(@house), notice: "#{@house.name} has rebranded!"
    else
      flash[:alert] = "Try again with all necessary info!"
      render :edit
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy

    flash[:alert] = "House destroyed! Is that 'The Rains of Castemere' I hear playing?"
    redirect_to houses_path
  end

  private
    def house_params
      params.require(:house).permit(:name, :sentence, :img_url, :motto)
    end
end
