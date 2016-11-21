require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game = Game.new('rock')
  end

  def test_players_choice
    assert_equal('Computer wins', @game.play_game)
  end

  def test_computers_choice
    assert_equal('rock', @game.computers_choice())
  end



end