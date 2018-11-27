require('minitest/autorun')
require('minitest/rg')

require_relative('../fish.rb')

class FishTest < MiniTest::Test


    def setup
      @freddy_fish = Fish.new("Freddy")
      @sonya_fish = Fish.new("Sonya")
      @dave_fish = Fish.new("Dave")
      @jimmy_fish = Fish.new("Jimmy")
      @colin_fish = Fish.new("Colin")
      @july_fish = Fish.new("July")
      @gerry_fish = Fish.new("Gerry")
      @raul_fish = Fish.new("Raul")
    end

    def test_fish_has_name
        assert_equal("Freddy", @freddy_fish.fish_name)
    end



  end
