class UsersController < ApplicationController
    def show
        index = params[:id].to_i
        @element = Gossip.all[index - 1]
        @user = @element.user
    end

    def index
    end

    def create
    #     user = User.find_by(email :params[:email])
        
    #   if @users && user.authenticate(params[:password])
    #     session[:user_id] = user.id
    #     flash[:success] = "Tu es maintenant connecté à ta session"
    #     redirect_to the_gossip_project_index_path
    #   else
    #     flash.now[:danger] = "Email ou mot de passe invalide"
    #     render 'new'
    #   end  
    end

    def update
    end

    def edit
    end

    def new
    #     @users = User.new(email: params[:email],
    #                       password: params[:password],
    #                       password_confirmation: params[:password_confirmation])
    
    #   if @users.save
    #     flash[:success] = "Bien joué, ton compte a bien été créé!"
    #     redirect_to the_gossip_project_index_path
    #   else
    #     flash[:alert] = "C'est mort pour toi, rééssaye"
    #     render 'new'
    #   end  
    end

    def destroy
    end
end
