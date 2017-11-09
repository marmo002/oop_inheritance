require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

  def setup
    @traveler = Multilinguist.new
  end

  def test_language_in_gives_right_language
    assert_equal 'es', @traveler.language_in('spain')
  end

end
