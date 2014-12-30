class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :because
      t.text :details
      t.string :picture

      t.timestamps
    end
  end
end
