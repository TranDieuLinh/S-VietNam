class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.string :title
      t.string :scenery_name
      t.string :scenery_address
      t.string :scenery_picture
      t.string :description
      t.integer :vote_counts
      t.float :scenery_votepoint

      t.timestamps
    end
  end
end
