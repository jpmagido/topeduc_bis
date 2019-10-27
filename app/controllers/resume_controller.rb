class ResumeController < ApplicationController
  def new

  	@new_resume = Resume.new
  end

  def create
  	Resume.create(params_resume)
  end

  def edit
  end

  def update
  	
  end

  def show
  	@last_resume = Resume.last.image_url
  end

  def destroy
  	
  end

  private

  def params_resume

  	params.require(:resume).permit(:image, :user_id, :title)
  	
  end
end
