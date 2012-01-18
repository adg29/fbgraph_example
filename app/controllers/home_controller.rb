class HomeController < ApplicationController
  def index
  end

  def show
    @user_picture = client.selection.me.picture
  end
  
  def create
    selection = client.selection
    selection.send(params[:type], params[:object])
    redirect_to selection.picture
  end
end
