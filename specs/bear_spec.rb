require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test


    def setup
      @barney_bear = Bear.new("Barney", "Grizzly")
      @yogi_bear = Bear.new("Yogi", "Brown")
      @enuffto_bear = Bear.new("Enuffto", "Black")
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

    def test_bear_has_name
        assert_equal("Barney", @barney_bear.bear_name)
    end

    def test_get_bear_type
        assert_equal("Black", @enuffto_bear.bear_type)
    end

    def test_roar
      assert_equal("GRRRRRRRRAAR!", @enuffto_bear.roar)
    end
    def test_count_eaten
      @yogi_bear.eat_fish(@river_tweed)
      @yogi_bear.eat_fish(@river_tweed)
      @yogi_bear.eat_fish(@river_tweed)
      @yogi_bear.eat_fish(@river_esk)
      assert_equal(4, @yogi_bear.count_fish_eaten)
    end

    def test_eat_fish
      # Various tests to ensure fish are eaten and expected results are received.
      current = @river_tweed.count_river_fish
      @yogi_bear.eat_fish(@river_tweed)
      assert_equal(current - 1, @river_tweed.count_river_fish)
      p @yogi_bear.fish_eaten
      @yogi_bear.eat_fish(@river_tweed)
      assert_equal(current - 2, @river_tweed.count_river_fish)
      p @yogi_bear.fish_eaten
      @yogi_bear.eat_fish(@river_esk)
      p @yogi_bear.fish_eaten
      p @river_esk.river_fish
    end





  end
