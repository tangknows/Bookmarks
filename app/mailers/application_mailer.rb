# app/mailers/application_mailer.rb
class ApplicationMailer < ActionMailer::Base
  default 'ngvt@live.com'
  layout 'mailer'
end
 
# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
end