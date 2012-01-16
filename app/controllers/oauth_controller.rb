class OauthController < ApplicationController
  
  def start
    redirect_to client.authorization.authorize_url(:redirect_uri => "http://review.kbsp.com:5000/search" , :scope => 'email,user_photos,friends_photos,publish_stream')

  end

  def callback
    access_token = client.authorization.process_callback(params[:code], :redirect_uri => "http://review.kbsp.com:5000/search")
    session[:access_token] = access_token
    user_json = client.selection.me.info!
    # in reality you would at this point store the access_token.token value as well as 
    # any user info you wanted
    render :json => user_json
  end

  def oclient
    OAuth2::Client.new('221080797977441','6d7dd77e070fe5748e7650c4bd65c0a2', :site => 'https://graph.facebook.com')
  end
  
end
