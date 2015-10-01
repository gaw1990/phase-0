# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# A keyword that requires that the given file is located within the same directory
# and if it does exist, to pull the data from that file into the current file.
=begin
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  # Keeps all methods and variables beneath this keyword inaccessible to instance variables.
  private

  # Predicts the nuber of deaths that will occur based on the population density of the state
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor # floor method rounds down to the nearest integer.
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Predicts the speed of spread of the virus, also based on the population density, the higher the density, the quicker the spread.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

=end
#=======================================================================
#                           REFACTORED SOLUTION

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # Keeps all methods and variables beneath this keyword inaccessible to instance variables.
  private

  # Predicts the nuber of deaths that will occur based on the population density of the state
  def predicted_deaths
    #predicted deaths is solely based on population density

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor # floor method rounds down to the nearest integer.
    elsif @population_density >= 50 
      number_of_deaths = ((((@population_density.to_i) / 50) / 10.to_f) * @population).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end 

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Predicts the speed of spread of the virus, also based on the population density, the higher the density, the quicker the spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end




#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def all_states
  STATE_DATA.each_key do |state|
    temp_state=VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    temp_state.virus_effects
  end
end

all_states



#=======================================================================
# Reflection Section









