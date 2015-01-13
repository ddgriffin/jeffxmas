class AddLinkHtmlToDistractions < ActiveRecord::Migration
  def change
    add_column :distractions, :link_html, :string
  end
end
