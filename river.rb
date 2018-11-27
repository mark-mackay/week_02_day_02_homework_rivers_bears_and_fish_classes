class River

attr_reader :river_name
attr_accessor :river_fish


  def initialize(river_name, river_fish = [])
    @river_name = river_name
    @river_fish = river_fish
  end

    def count_river_fish
      return @river_fish.length
    end

    def take_fish
      result = @river_fish.pop
    end




end
