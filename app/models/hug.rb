class Hug < ActiveRecord::Base
  # attr_accessible :title, :body
  include ActiveModel::Conversion
  include ActionView::Helpers::TextHelper
  include Rails.application.routes.url_helpers
  include ActionDispatch::Routing::UrlFor
  include ApplicationHelper

  def default_url_options
    if Rails.env.development?
      { :host => 'localhost:3000'}
    else
      { :host => 'www.jeffyougotthis.com'}
    end
  end

  def deliver
    Pony.mail({
      :to => "Diana Griffin<dianadgriffin@gmail.com>",
      :from => "Jeff Patton<jeff.patton@ac4d.com>",
      :reply_to => "Jeff Patton<jeff.patton@ac4d.com>",
      :subject => "Hug, please!",
      :html_body => %(<h1>Oh dear!</h1>
        <p>Jeff needs a hug. Deploy emergency comfort tactics, stat!</p>
        <p>~Gig 'em!</p>),
    })
    return true
  end
end
