# == Schema Information
#
# Table name: areas
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AreaTest < ActiveSupport::TestCase
  fixtures :areas

  test "area attributes must not be empty" do 
    area = Area.new
    assert area.invalid?
    assert area.errors[:name].any?
    assert area.errors[:description].any?
  end

  test "area is not valid without a unique name" do
    area = Area.new(name: areas(:one).name,
                    description: "xxx")
    assert !area.save
    assert_equal "has already been taken", area.errors[:name].join('; ')
  end
 end
