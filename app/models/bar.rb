# == Schema Information
#
# Table name: bars
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  description      :text
#  telephone_number :string(255)
#  address          :string(255)
#  open_time        :time
#  closed_time      :time
#  image_url        :string(255)
#  area_id          :integer
#  genre_id         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  latitude         :float
#  longitude        :float
#  gmaps            :boolean
#

class Bar < ActiveRecord::Base
  belongs_to :area
  belongs_to :genre
  attr_accessible :address, :closed_time, :description, :image_url, :name, :open_time, :telephone_number, :latitude, :longitude, :gmaps, :genre_id, :area_id, :genre, :area

  acts_as_gmappable

  validates :name, presence: true, uniqueness: true

  def gmaps4rails_address
    "#{address}"
  end
end
