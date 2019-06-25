class HomeController < ApplicationController

    def home

    end

    def contact
    
    end

    def login

    end

    def auth
        
        @email=params[:user][:email]
        @password=params[:user][:password]

        @email_db="example@example.com"
        @password_db="abc123" 
        if (@email==@email_db) && (@password==@password_db)
           flash[:success]="Logged IN"
           redirect_to '/articles/new'         
        else
            flash[:danger]="Wrong credentials"
            render :action => :login
        end
        
    end

    def logout
        redirect_to '/login'
    end

    
end
