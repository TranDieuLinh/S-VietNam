class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :scenery_id
      t.float :vote_point

      t.timestamps
    end
  end
end
