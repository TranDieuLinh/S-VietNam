class CreateMeibutus < ActiveRecord::Migration[5.0]
  def change
    create_table :meibutus do |t|
      t.integer :speciatly_id
      t.string :specialty_name
      t.string :specialty_picture

      t.timestamps
    end
  end
end
