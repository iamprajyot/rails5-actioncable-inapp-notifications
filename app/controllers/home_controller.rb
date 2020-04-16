class HomeController < ApplicationController
	before_action :authenticate_user!
  
  def index
  end

  def show_message
  	User.delay.broadcaster_method(current_user.id, current_user.email)

  	respond_to do |format|
  		format.js
  	end
  end

end
