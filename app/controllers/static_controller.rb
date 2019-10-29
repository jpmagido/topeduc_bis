class StaticController < ApplicationController

	include StaticHelper

  def home
  end

  def test

  end

  def secret_page
  	@user_email = current_user.email
  	@user_first_name = current_user.first_name
  	@user_last_name = current_user.last_name
  	@user_job = current_user.job
  	@user_nationality = current_user.nationality
  	@user_phone = current_user.phone
  	@user_adress = current_user.adress
  	@user_zip_code = current_user.ZIP_CODE
  	@user_availability = current_user.availability
  	@user_avail_starts_at = Calendar.where(user_id: current_user.id).ids
  end
end
