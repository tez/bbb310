class Bar < ActiveRecord::Base
  belongs_to :area
  belongs_to :genre
  attr_accessible :address, :closed_time, :description, :image_url, :name, :open_time, :telephone_number, :genre_id, :area_id, :genre, :area

  validates :name, presence: true, uniqueness: true
end
