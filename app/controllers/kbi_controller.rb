class KbiController < ApplicationController
  
  def new

  	@new_kbis = Kbi.new
  end

  def create
  	Kbi.create(params_kbis)
  end

  def edit
  end

  def update
  end

  def show
  	@last_kbis = Kbi.last.image_url
  end

  def destroy
  	
  end

  private

  def params_kbis

  	params.require(:kbi).permit(:image, :user_id, :title)
  	
  end

end
