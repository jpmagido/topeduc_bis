class PermisBController < ApplicationController
  def new
  	@new_permis_b = PermisB.new
  end

  def create
  	PermisB.create(params_permis_b)
  end

  def edit
  end

  def update
  end

  def show
  	@last_permis_b = PermisB.last.image_url
  end

  def destroy
  	
  end

  private

  def params_permis_b

  	params.require(:permis_b).permit(:image, :user_id, :title, :recto)
  	
  end
end
