require 'test_helper'

class ArtistTest < ActiveSupport::TestCase

  setup do
    @artist = Artist.new(name: "The Bee Gees")
  end

  test 'should be valid after creation' do
    assert @artist.valid?
  end

  test 'name should be valid' do
    @artist = Artist.new(name: "   ")
    assert_not @artist.valid?
  end

  test 'name should be unique' do
    @duplicate_artist = @artist.dup
    @duplicate_artist.name = @artist.name.upcase
    @artist.save
    assert_not @duplicate_artist.valid?
  end

  

end
