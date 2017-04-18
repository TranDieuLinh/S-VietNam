class CreateKuchikomis < ActiveRecord::Migration[5.0]
  def change
    create_table :kuchikomis do |t|
      t.integer :user_id
      t.integer :scenery_id
      t.string :review_content

      t.timestamps
    end
  end
end
