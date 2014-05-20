# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative

# reuire_relative is linking two separate files together. It's telling the current file that information on this
# other file is needed to complete the work.

# The state data is held in a nested hash. The state name as a string key has a hash as its value. The data hash is made up of symbols their values.

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # This is a public instance method of the class. Each state or member of the class is initialized with instance variables. Because they are 
  # instance variables, they likely don't need to be included as parameters in any of the methods, either public or private. Each state or member
  # can access the methods only with their specific variables. 
  def virus_effects     
    predicted_deaths 
    speed_of_spread 
  end

  # Public methods allow for an interface with the program. If you need to access something about the class or its instances, it happens here. 
  # On the other hand, private methods are to be undisturbed. They are usually unreachable. For example, a bank program might have public methods 
  # to deal with account names and types but private methods that store and update pin numbers. 
  private 

  # This method takes the state's population data and calculates how many deaths could occur. The higher the population density the more deaths.
  def predicted_deaths                                                           
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
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

  # This method takes the state's population data and calculates how quickly the virus will spread. The output is in month or fraction thereof. The
  # higher the population density, the faster it will spread.
  def speed_of_spread  
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





