gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters
    assert_equal 4, Scrabble.new.score("be")
    assert_equal 2, Scrabble.new.score("no")
  end

  def test_it_can_score_a_full_word
    assert_equal 8, Scrabble.new.score("hello")
    assert_equal 16, Scrabble.new.score("zebra")
  end

  def test_it_can_score_nil_or_empty_string_as_zero
    assert_equal 0, Scrabble.new.score("")
    assert_equal 0, Scrabble.new.score(nil)
  end

end
