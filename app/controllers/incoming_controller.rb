class IncomingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  # POST /users
  # POST /users.json

  def create
    # Take a look at these in your server logs
    # to get a sense of what you're dealing with.2
    puts "INCOMING PARAMS HERE: #{params}"

    
    sender = params[:sender]
    @incomingUserID = current_user.id
    
    
    puts "this is #{sender}"
    
    Topic.create(:title => sender, :user_id => @incomingUserID)
  
    
    puts sender
    puts @incomingUserID
  end
  
end
