class Bookmark < ActiveRecord::Base
  belongs_to :user
    belongs_to :topic
    
    
    def markdown_link
      render_as_markdown link
    end

end
