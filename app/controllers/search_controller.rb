class SearchController < ApplicationController
  
  def index
  end
  
  def create
    result = client(session[:access_token]).search.query(params[:q]).on(params[:on]).info
    render :json => result
  end
  
end
