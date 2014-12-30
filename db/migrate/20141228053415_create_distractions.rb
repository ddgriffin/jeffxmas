class CreateDistractions < ActiveRecord::Migration
  def change
    create_table :distractions do |t|
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
