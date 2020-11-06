class SessionsController < ApplicationController
    def new
    end

    def create
        session[:name] = params[:name]
        if session[:name] == 'Werner Brandes'
            redirect_to '/'
        else
            redirect_to '/login'
        end
        # byebug
    end

    def destroy
        #byebug
        session.delete :name
    end
end