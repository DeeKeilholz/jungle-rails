class SessionsController < ApplicationController

  def new
  end


  def create
    # If user credentials are correct.
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to '/'
    else
      # If user's login doesn't work, show message and send them back to the login form.
      flash[:notice] = "Incorrect email or password."
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
