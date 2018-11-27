require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test


    def setup
      @freddy_fish = Fish.new("Freddy")
      @sonya_fish = Fish.new("Sonya")
      @dave_fish = Fish.new("Dave")
      @jimmy_fish = Fish.new("Jimmy")
      @colin_fish = Fish.new("Colin")
      @july_fish = Fish.new("July")
      @gerry_fish = Fish.new("Gerry")
      @raul_fish = Fish.new("Raul")
      @river_tweed = River.new("Tweed", [@freddy_fish, @sonya_fish, @dave_fish, @jimmy_fish, @july_fish, @gerry_fish ])
      @river_esk = River.new("Esk", [@colin_fish, @raul_fish])
    end

    def test_river_has_name
        assert_equal("Tweed", @river_tweed.river_name)
    end

    def test_count_river_fish__tweed
       assert_equal(6, @river_tweed.count_river_fish)
    end
    def test_count_river_fish__esk
       assert_equal(2, @river_esk.count_river_fish)
    end

    def test_take_fish
      current = @river_tweed.count_river_fish
      result = @river_tweed.take_fish
      assert_equal(5, @river_tweed.count_river_fish)
      assert_equal("Gerry", result.fish_name)
    end



  end
