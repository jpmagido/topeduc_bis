class DiplomaController < ApplicationController
  def new

  	@new_diploma = Diploma.new
  end

  def create
  	Diploma.create(params_diploma)
  end

  def edit
  end

  def update
  end

  def show
  	@last_diploma = Diploma.last.image_url
  end

  def destroy
  	
  end

  private

  def params_diploma

  	params.require(:diploma).permit(:image, :user_id, :title)
  	
  end
end
