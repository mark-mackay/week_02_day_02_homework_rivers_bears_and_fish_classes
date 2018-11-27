class Bear

attr_reader :bear_name, :bear_type
attr_accessor :fish_eaten

    def initialize(bear_name, bear_type)
      @bear_name = bear_name
      @bear_type = bear_type
      @fish_eaten = []
    end

    def roar
      return "GRRRRRRRRAAR!"
    end

    def eat_fish(river)
     @fish_eaten << river.take_fish if river.count_river_fish > 0
    end
    def vomit_fish(river)
      river.add_fish(@fish_eaten.pop) if @fish_eaten.length > 0
    end
    def eat_all_fish(river)
      @fish_eaten += river.river_fish if river.count_river_fish > 0
      river.river_fish.clear
    end

    def count_fish_eaten
      return @fish_eaten.length
    end


end
