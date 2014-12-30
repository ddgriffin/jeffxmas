class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :link_address
      t.string :type
      t.text :comments

      t.timestamps
    end
  end
end
