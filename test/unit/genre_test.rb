require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  fixtures :genres

  test "genre attributes must be not be empty" do
    genre = Genre.new
    assert genre.invalid?
    assert genre.errors[:name].any?
  end

  test "area is not valid without a unique name" do
    genre = Genre.new(name: genres(:japanese_style_foods).name)
    assert !genre.save
    assert_equal "has already been taken", genre.errors[:name].join('; ')
  end
end
