class SolarSystem

  attr_reader :planets, :star_name


  #constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planets(planet) #add_planet
    @planets << planet
    return @planets
  end

  def list_planets #list_planets
    i = 1
    list_planets = ""
    @planets.each do |planet|
      list_planets += "#{i}. #{planet.name} "
      i += 1
    end
    return "Planets orbiting #{@star_name} #{list_planets}"
  end

  def find_planet_by_name (name)
    @planets.each do |planet|
      if planet.name.capitalize == name.capitalize
        return planet
      end
    end
  end

end
