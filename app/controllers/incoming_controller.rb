class IncomingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  # POST /users
  # POST /users.json

  def create
    # Take a look at these in your server logs
    # to get a sense of what you're dealing with.2
    puts "INCOMING PARAMS HERE: #{params}"
    
    @subject = Incoming.new(params[:subject])
    @subject.save
    
    puts "This is the #{@subject}"
    puts "This is the #{subject2}"
    

    # You put the message-splitting and business
    # magic here. 

    # Assuming all went well. 
    head 200
  end
  
end
