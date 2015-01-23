class IncomingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    # Take a look at these in your server logs
    # to get a sense of what you're dealing with.2
    puts "INCOMING PARAMS HERE: #{params}"

    
    sender = params[:sender]
    puts sender
    
    Topic.create(:title => params[:sender], :topic => params[:sender])
    
    head 200
  end
  
end
