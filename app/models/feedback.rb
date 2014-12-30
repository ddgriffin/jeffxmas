class Feedback < ActiveRecord::Base
  include ActiveModel::Conversion
  include ActionView::Helpers::TextHelper
  include Rails.application.routes.url_helpers
  include ActionDispatch::Routing::UrlFor
  include ApplicationHelper

  attr_accessible :comments, :link_address, :whatkind

  def default_url_options
    if Rails.env.development?
      { :host => 'localhost:3000'}
    else
      { :host => 'https://safe-chamber-4755.herokuapp.com'}
    end
  end

  def deliver
    Pony.mail({
      :to => "Diana Griffin<dianadgriffin@gmail.com>",
      :from => "Jeff Patton<jeff.patton@ac4d.com>",
      :reply_to => "Jeff Patton<jeff.patton@ac4d.com>",
      :subject => "Feedback, please!",
      :html_body => %(<h1>Hooray!</h1>
        <p>The button actually worked! Here's what Jeff wants feedback on: <a href="#{url_for(self)}">Feedback Request</a></p>
        <ul>
          <li><b>Link:</b> #{self.link_address}</li>
          <li><b>Kind of feedback:</b> #{self.whatkind}</li>
          <li><b>Comments:</b> #{self.comments}</li>
        </ul>
        <p>~Whoop!</p>),
    })
    return true
  end
end
