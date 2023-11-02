class TheGossipProjectController < ApplicationController
  #méthodes du projet validant de lundi 30/10
  def team
  end

  def contact
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
    @gossips = Gossip.new(title: params[:title],
                          content: params[:content])
    @gossips.user = User.find_by(first_name: params[:user])
    
      if @gossips.save
        flash[:success] = "Gossip saved successfully"
        redirect_to the_gossip_project_index_path
      else
        flash[:alert] = "No way il manque des choses"
        render 'new'
      end             
  end

  def edit
  end

  def show
    index = params[:id].to_i
    @element = Gossip.all[index - 1]

  end

  def update
  end

  def destroy
  end

end
