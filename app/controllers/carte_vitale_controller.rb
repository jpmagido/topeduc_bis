class CarteVitaleController < ApplicationController
  
  def new

  	@new_carte_vitale = CarteVitale.new
  end

  def create
  	CarteVitale.create(params_carte_vitale)
  end

  def edit
  end

  def update
  end

  def show
  	@last_carte_vitale = CarteVitale.last.image_url
  end

  def destroy
  	
  end

  private

  def params_carte_vitale

  	params.require(:carte_vitale).permit(:image, :user_id, :title)
  	
  end
end
