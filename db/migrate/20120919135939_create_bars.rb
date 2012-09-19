class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.text :description
      t.string :telephone_number
      t.string :address
      t.time :open_time
      t.time :closed_time
      t.string :image_url
      t.references :area
      t.references :genre

      t.timestamps
    end
    add_index :bars, :area_id
    add_index :bars, :genre_id
  end
end
