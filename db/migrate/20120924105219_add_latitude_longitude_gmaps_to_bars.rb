class AddLatitudeLongitudeGmapsToBars < ActiveRecord::Migration
  def change
    add_column :bars, :latitude, :float
    add_column :bars, :longitude, :float
    add_column :bars, :gmaps, :boolean
  end
end
