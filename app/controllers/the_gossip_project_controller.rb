class TheGossipProjectController < ApplicationController
  #méthodes du projet validant de lundi 30/10

  def team
  end

  def contact
  end

  def one_gossip
    index = params[:id].to_i
    @element = Gossip.all[index - 1]
  end

  # def welcome
  #   puts "$" * 60
  #   puts @first_name = params[:first_name]
  #   puts "$" * 60
  # end

  #méthode du mardi 31/10
  def index
    @gossips = Gossip.all
  end

  def create
    user = User.find_by(first_name: params[:user])
    @gossips = Gossip.new(title: params[:title],
                          content: params[:content])
    @gossips.user = user
                 
      if @gossips.save
        flash[:success] = "Gossip saved successfully"
        redirect_to the_gossip_project_index_path
      else
        flash[:alert] = "No way il manque des choses"
        render 'new'
      end   
#Formule potentielle pour message bootstrap  
# <% if @gossips.errors.any? %> 
#   <div class="alert alert-danger" role="alert">
#   Oops! Il y a eu des erreurs lors de la création du gossip :
# </div>
# <% elsif @gossips.persisted? %>
# <div class="alert alert-success" role="alert">
#  Le gossip a été créé avec succès !
# </div>
# <% end %>            
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end
