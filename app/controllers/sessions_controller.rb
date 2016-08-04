class SessionsController < ApplicationController
  

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password]) 
      # Log the user in and redirect to the user's show page.
      log_in user
      #redirect_to user
      redirect_to "/"
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid name/password combination'
      render 'new'
    end
  end

  
  def destroy
    log_out
    redirect_to root_url
  end


end
