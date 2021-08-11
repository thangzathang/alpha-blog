class PagesController < ApplicationController

    def home
        redirect_to how_path if logged_in?
    end

    def about
        
    end

    def how

    end

end
