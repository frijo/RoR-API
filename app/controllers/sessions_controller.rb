class SessionsController < ApplicationController
	def authentication
	  @user = User.find_by_nick_name(params[:session][:nick_name])
	  if @user && @user.authenticate(params[:session][:password])
	    session[:user_id] = @user.id
	    render json: session
	  else
	    
	  end 
	end
end
