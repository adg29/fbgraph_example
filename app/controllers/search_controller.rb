class SearchController < ApplicationController
  
  def show
  end
  
  def create
    result = client.search.query( params[:q] ).on( params[:on] ).info!

    respond_to do |format|
      format.html   { redirect_to(:action => 'show') }
      format.mobile { redirect_to(:action => 'show') }
    end

  end
  
end
