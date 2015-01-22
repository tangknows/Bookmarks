class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @topic = Topic.find(params[:topic_id])
    @bookmark = Bookmark.find(params[:id])
    
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @bookmark = Bookmark.new
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @bookmark = Bookmark.find(params[:id])
    
    if @bookmark.save
      redirect_to [@topic, @bookmark]
    else
      flash[:error] = "There was an issue saving"
    end
  end
  
  def create
    @topic = Topic.find(params[:topic_id])
    @bookmark = @topic.bookmarks.new(bookmark_params)
    @bookmark.user_id = current_user.id
    
    if @bookmark.save
      redirect_to @topic
    else
      flash[:error] = "There was an issue creating bookmark"
    end
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @bookmark = Bookmark.find(params[:id])
    
    if @bookmark.update_attributes(params.require(:bookmark).permit(:link))
      redirect_to [@topic, @bookmark]
    else
      flash[:error] = "There was an issue saving"
    end

  end
  
  def bookmark_params
    params.require(:bookmark).permit(:link)
  end

end
