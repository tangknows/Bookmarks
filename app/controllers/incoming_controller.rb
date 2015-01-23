class IncomingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    # Take a look at these in your server logs
    # to get a sense of what you're dealing with.
    puts "INCOMING PARAMS HERE: #{params}"
    Topic.create(:title => params["sender"])
  end
end


#    sender = params[:sender]
#    puts sender
#    Topic.create(:title => params[:sender], :topic => params[:sender])
#    head 200