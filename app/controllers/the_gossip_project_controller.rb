class TheGossipProjectController < ApplicationController

  def team
  end

  def contact
  end

  def index
    @gossips = Gossip.all
  end

  def create
    @gossips = Gossip.new(title: params[:title],
                          content: params[:content])
    @gossips.user = User.find_by(id: session[:user_id])

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
