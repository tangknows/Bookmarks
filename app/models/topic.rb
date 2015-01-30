class Topic < ActiveRecord::Base
  has_many :bookmarks
  
  def markdown_link
    render_as_markdown link
  end
  
  
  
  
end
