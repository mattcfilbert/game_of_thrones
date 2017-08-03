class CharactersController < ApplicationController

  def new
    @house = House.find(params[:house_id])
    @character = @house.characters.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.new(character_params)
    if @character.save
      redirect_to @house, notice: "#{@character.name} was successfully inducted into House #{@house.name}!"
    else
      flash[:alert] = "A character has no name, eh? Cute, but unacceptable. Faceless Men are forbidden from joining House #{@house.name}!"
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  def update
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
    @character.update(character_params)
    if @character.save
      redirect_to house_character_path(@house, @character), notice: "#{@character.name} has always looked this way and has gone by #{@character.name} all along... why do you ask?"
    else
      flash[:alert] = "A character has no name, eh? Cute, but unacceptable. Faceless Men are forbidden from joining House #{@house.name}!"
      render :edit
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    flash[:alert] = "This character has been #{@character.house.sentence}d!"
    redirect_to house_path(@character.house)
  end

  private
  def character_params
    params.require(:character).permit(:name, :img_url, :house_id)
  end
end
