class SessionsController < ApplicationController
    include SessionsHelper
    def new

    end

    def create
        @user = User.find_by(email: params[:email])
        
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:success] = "Bienvenue, tu es maintenant connecté à ta session"
        redirect_to the_gossip_project_index_path
      else
        flash.now[:alert] = "Email ou mot de passe invalide"
        render 'new'
      end  
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
        flash[:success] = "Tu es bien déconnecté"
    end
end
