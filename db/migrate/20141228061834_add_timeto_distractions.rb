class AddTimetoDistractions < ActiveRecord::Migration
  def change
    add_column :distractions, :time, :string
  end
end
