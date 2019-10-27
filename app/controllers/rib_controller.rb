class RibController < ApplicationController
  
  def new

  	@new_rib = Rib.new
  end

  def create
  	Rib.create(params_rib)
  end

  def edit
  end

  def update
  end

  def show
  	@last_rib = Rib.last.image_url
  end

  def destroy
  	
  end

  private

  def params_rib

  	params.require(:rib).permit(:image, :user_id, :title)
  	
  end
end
