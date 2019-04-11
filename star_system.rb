class StarSystem
  attr_reader :name, :planets


def initialize(name, planets)
  @name = name
  @planets = planets
end

def planet_names
  planets = @planets.map { |planet| planet.name }
  return planets
end

def get_planet_by_name(name)
  @planets.find{ |planet| planet.name == name}
end

def get_largest_planet
  @planets.max_by{ |planet| planet.diameter}
end

def get_smallest_planet
  @planets.min_by{ |planet| planet.diameter}
end

def get_planets_with_no_moons
  no_moons = @planets.find_all { |planet| planet.number_of_moons == 0 }
end

def get_planets_with_more_moons(moons)
  more_moons = @planets.find_all { |planet| planet.number_of_moons > moons}
  planets_return = planets = more_moons.map { |planet| planet.name }
end

def get_number_of_planets_closer_than(distance)
  more_moons = @planets.find_all { |planet| planet.distance_from_sun < distance}
  planets_return = more_moons.length
end

def get_total_number_of_moons
  moons = @planets.map { |planet| planet.number_of_moons}
  return moons.reduce { |total, moon| total + moon }
end

def get_planet_names_sorted_by_increasing_distance_from_sun
  sorted = @planets.sort_by { |planet| planet.distance_from_sun}
  return sorted.map { |planet| planet.name}
end

def get_planet_names_sorted_by_size_decreasing
  sorted = @planets.sort_by { |planet| planet.diameter}
  return sorted.reverse.map { |planet| planet.name}
  #return resorted.reverse
end





end
