# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  fixtures :genres

  test "genre attributes must be not be empty" do
    genre = Genre.new
    assert genre.invalid?
    assert genre.errors[:name].any?
  end

  test "area is not valid without a unique name" do
    genre = Genre.new(name: genres(:one).name)
    assert !genre.save
    assert_equal "has already been taken", genre.errors[:name].join('; ')
  end
end
