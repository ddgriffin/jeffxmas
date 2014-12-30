class CreateHugs < ActiveRecord::Migration
  def change
    create_table :hugs do |t|

      t.timestamps
    end
  end
end
