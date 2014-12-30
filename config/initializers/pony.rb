# config/initializers/pony.rb

Pony.options = {

  :to => 'dianadgriffin@gmail.com',
  :from => "Jeff Patton<jeff.patton@ac4d.com>",
  :reply_to => "Jeff Patton<jeff.patton@ac4d.com>",
  :via => :smtp,
  :via_options => {
    :address => 'smtp.gmail.com',
    :port => '587',
    :enable_starttls_auto => true,
    :user_name => ENV["GMAIL_USERNAME"],
    :password => ENV["GMAIL_PASSWORD"],
    :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain => "heroku.com" # the HELO domain provided by the client to the server
  }

}