module ApplicationHelper

    #Add layouts content
    def title
    base_title = "Action+  Missions humanitaires"
    if @title.nil?
    base_title
    else
    "#{@title} | #{base_title}"
    end
    end

    #site description
    def description
    "Action+ ......"
    end

    def keywords
    "Faire un don, don, association, ong, donner, don en ligne, don sécurisé, soutenir, donation, make a donation"
    end

    ### Add notice
    def render_notices
        render "shared/flash/notices"
    end
    
    #Sign in and up anywhere on app
    def resource_name
        :user
    end
  
    def resource
        @resource ||= User.new
    end
    
    def resource_class
        User
    end
    
    def devise_mapping
        @devise_mapping ||= Devise.mappings[:user]
    end
end
