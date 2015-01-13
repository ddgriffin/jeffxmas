class Distraction < ActiveRecord::Base
  include AutoHtml

  attr_accessible :description, :link, :time

  auto_html_for :link do
    html_escape
    image
    youtube(:width => 400, :height => 250, :autoplay => false)
    vimeo(:width => 440, :height => 248, :show_title => true, :show_byline => false, :show_portrait => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end
