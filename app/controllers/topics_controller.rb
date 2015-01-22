class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @bookmarks = Topic.all.includes(:bookmarks).where('bookmarks.topic_id = 2').references(:bookmarks)


  end

  def show
    @topic = Topic.find(params[:id])
    @bookmarks = @topic.bookmarks
    @bookmark = Bookmark.new
  end

  def new
    @topic = Topic.new
  end

  def edit
    @topic = Topic.find(params[:id])    
    
    if @topic.save
      @topic
    else
      flash[:error] = "error in editing"
    end
    
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(params.require(:topic).permit(:title,:body))
      redirect_to @topic
    else
      flash[:error] = "error in saving"
    end
    
  end
  
  def create
    @topic = Topic.new(params.require(:topic).permit(:title, :body))
      if @topic.save 
        redirect_to @topic
      else
        flash[:error] = "Error in saving"
        render :new
      end
  
  end
  
  
end

