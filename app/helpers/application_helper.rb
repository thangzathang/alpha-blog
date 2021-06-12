module ApplicationHelper

    def gravatar_for(user, options = { size: 80 })
        email_address = user.email.downcase
        hash = Digest::MD5.hexdigest(email_address)

        size = options[:size]

        gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"

        # The Class is from bootstrap - works because this is an <img> tag!
        image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block") 
    end

    # def current_user
    #     @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # end
    # Moved to the applciation_controller!

    # def logged_in?
    #     # We have just turned this method into a boolean - it will return true or false
    #     !!current_user
    # end
    # Also moved to the application_controller!

end
