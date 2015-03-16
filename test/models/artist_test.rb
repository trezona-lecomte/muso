require 'test_helper'

class ArtistTest < ActiveSupport::TestCase

  setup do
    @artist = Artist.new(name: "The Bee Gees")
  end

  test 'should be valid after creation' do
    assert @artist.valid?
  end

  test 'name should be valid' do
    @artist.name = " "
    assert_not @artist.valid?
  end

  test 'name should be unique' do

  end

  

end
