class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  
  protected

  def client
    @client ||= FBGraph::Client.new(:client_id => '221080797977441',
                                   :secret_id => '6d7dd77e070fe5748e7650c4bd65c0a2' , 
                                   :token => session[:access_token])
  end
end
