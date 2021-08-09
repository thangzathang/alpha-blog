class SessionsController < ApplicationController

    def new
        
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id 
            flash[:notice] = "Logged In Successfully"
            # redirect_to user
            redirect_to user_path(user)
        else 
            # We use flash.now because we aren't redirecting it.
            flash.now[:alert] = "Invalid login credentials..."
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged Out Successfully"
        redirect_to root_path
    end

end