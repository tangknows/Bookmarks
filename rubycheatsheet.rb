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
  
Add markdown
gem 'redcarpet'

def markdown(text)
  renderer = Redcarpet::Render::HTML.new
  extensions = {fenced_code_blocks: true}
  redcarpet = Redcarpet::Markdown.new(renderer, extensions)
  (redcarpet.render text).html_safe
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
  
Add Devise
  gemfile 'devise'
  
  Install devise
    $ rails g devise:install

  Configure Devise in config/environments/development.rb
    config.action_mailer.default_url_options = { host: 'localhost:3000' }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.perform_deliveries = true
    
  Install the views for devise
    rails g devise:views
    
Add User model
  rails g devise User
  Add t.string :name to user's table'
  Uncomment everthing under the confirmable section in the migration table
  Add confirmable in model users.rb
  
Added HEROKU

Adding FIGARO
  gem 'figaro', '1.0'
  bundle
  figaro install
  
  Open up the generated file and add your private information:
  config/application.yml
  SENDGRID_PASSWORD: exAmplePa$$
  SENDGRID_USERNAME: myspecialusername
  
Set up Sengrid

Add Heroku config mail gun
heroku config to see keys
heroku config:set SECRET_KEY='xxxx'
heroku run rake db:setup
you got to set up the database

params[:subject]

Model
MODELS BOOKMARKS
  belongs to Users
    belongs to Topics
MODELS TOPICS
  has many bookmarks
  
  
TOPICS
t.string  title
t.text    body

USERS
t.string  name

BOOKMARKS
t.string  link
t.string  USER_ID
t.string  TOPIC_ID

rails g controller Topics index show new edit update
rails g model Bookmark link:string user:references topic:references

generated Bookmarks controller
create crud


  