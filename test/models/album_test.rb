require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  setup do
    @album = Album.new(name: "Cucumber Castle")
  end

  test 'should be valid' do
    assert @album.valid?
  end

end
