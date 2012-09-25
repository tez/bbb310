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

require 'test_helper'

class BarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
