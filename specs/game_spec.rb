require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game = Game.new()
  end
def test_computers_choice
  assert_equal('rock', @game.computers_selection())
end



end