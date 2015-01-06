create project
  $ rails new first-app

git set up - follow this procedure in case of error
  2. $ git init
  3. $ git remote add origin git@github.com:tangknows/Bookmarks.git
  4. $ git add .
  5. $ git commit -m ‘initial commit’
  6. $ git push origin master

Change gemfile

  DELETE gem'sqlite3'

  group :production do 
	  gem 'pg'
	  gem 'rails_12factor'
  end

  group :development do
	  gem 'sqlite3'
  end

Add first controller
  rails g controller welcome index about
  
Root routes
  
  get 'about' => 'welcome#about'
  root to: "welcome#index" 
  
Add Bootstrap
  gem 'bootstrap-sass', '~> 3.1.1'  
  
Altered HTML Layout & Reference (reference the style sheet to the HTML static page)

  <title>Self Destructing To-Do </title>
  <%= stylesheet_link_tag "application", media: "all", "data-turbolinks-track" => true %>
  <%= javascript_include_tag "application", "data-turbolinks-track" => true %>
  <%= csrf_meta_tags %>
  

	  <div class="container">
	  <nav>
	  <ul class= "nav nav-pills pull-right">
           <li><%= link_to "Home", root_path %></li>
           <li><%= link_to "About", about_path %></li>
    </ul>
    </nav>

    <%= yield %>

	</div>
  
  
Adjust the CSS 

  @import "bootstrap";

  .user-info {
    margin-top: 9px;
  }

  .nav {
    color: #FFFAF0;
    margin-top: 45px;
  }

  .nav li a{
    color: #FFFAF0;
	
  }