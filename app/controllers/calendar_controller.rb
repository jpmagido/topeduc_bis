class CalendarController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@new_calendar = Calendar.new
  end

  def create
  	Calendar.create(params_calendar)
  	redirect_to(static_secret_page_path)
  end

  def edit
  	@calendar_to_update = Calendar.find(params[:id])
  end

  def update
  	@calendar_to_update = Calendar.find(params[:id])
  	@calendar_to_update.update(params_calendar)
  end

  def params_calendar
  	params.require(:calendar).permit(:user_id, :pace, :starts_at, :duration, :recurring)
  end
end
