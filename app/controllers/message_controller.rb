class MessageController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@new_message = Message.new
  end

  def create
  	Message.create(params_message)
  	redirect_to static_secret_page_path
  end

  def edit
  end

  private

  def params_message

  	params.require(:message).permit(:title, :body, :sender_id, :recipient_id, :read?)
  	
  end
end
