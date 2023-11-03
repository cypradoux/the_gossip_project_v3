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
    # @gossip = Gossip.find(params[:id])
  end

  def show
    index = params[:id].to_i
    @element = Gossip.all[index - 1]

  end

  def update
    @model = Model.find(params[:id])
    if @model.update(params[:id])
      redirect_to @model
      flash[:success] = "Bien joué, tu as bien modifié le gossip !"
    else
      render :edit
    end
  end

# def update
#     gossip_params = params.require(:gossip).permit(:title, :content)
#     @gossip = Gossip.find_by(id: params[:id])
#     @gossip.update(gossip_params)

#   end

  def destroy
  end

end
