class UsersController < ApplicationController
    def show
        index = params[:id].to_i
        @element = Gossip.all[index - 1]
        @user = @element.user
    end

    def index
    end

    def create
        @users = User.new(email: params[:email],
                        first_name: params[:first_name],
                        last_name: params[:last_name],
                        age: params[:age],
                        description: params[:description],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation],
                        city_id: 127)
    
      if @users.save
        @users.authenticate(params[:password])
        flash[:success] = "Bien joué, ton compte a bien été créé!"
        redirect_to the_gossip_project_index_path
      else
        flash[:alert] = "C'est mort pour toi, rééssaye"
        render 'new'
      end  
    end

    def update
    end

    def edit
    end

    def new

    end

    def destroy
    end
end
