class UsersController < ApplicationController
  def home
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  def user_params
  end
end

=begin
def index
  @gossips = Gossip.all
end

def show
  @gossip = Gossip.find(params[:id])

end

def edit
  @gossip = Gossip.find(params[:id])

end

def update
  @gossip = Gossip.find(params[:id])
  @gossip.update(gossip_params)
  redirect_to gossips_path
end

def new
  @gossip = Gossip.new
end

def create
  @gossip = Gossip.create(gossip_params)
  @gossip.save
  redirect_to @gossip
end

def destroy
  @gossip = Gossip.find(params[:id])
  @gossip.destroy
  redirect_to gossips_path
end

private

def gossip_params
  params.require(:gossip).permit(:anonymous_author, :content)
end
=end
