class IdController < ApplicationController
  
  def new
  	@new_id = Id.new
  end

  def create
  	Id.create(params_id)
  end

  def edit
  end

  def update
  end

  def show
  	@last_id = Id.last.image_url
  end

  def destroy
  	
  end

  private

  def params_id

  	params.require(:id).permit(:image, :user_id, :title, :recto)
  	
  end
end
