# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative

# require_relative is linking two separate files together. It's telling the current file that information on this
# other file is needed to complete the work. For example, I can require_relative a challenge from last week to make
# the numbers easier to read.

# The state data is held in a nested hash. The state name as a string key has a hash as its value. The data hash is 
# made up of symbols their values.

require_relative 'state_data'
require_relative '../../week_4/4_nums_commas_solo_challenge/my_solution'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # This is a public instance method of the class. Each state or member of the class is initialized with instance 
  # variables. Because they are instance variables, they likely don't need to be included as parameters in any of 
  # the methods, either public or private. Each state or member can access the methods only with their specific 
  # variables. 
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  # Public methods allow for an interface with the program. If you need to access something about the class or its 
  # instances, it happens here. On the other hand, private methods are to be undisturbed. They are usually 
  # unreachable. For example, a bank program might have public methods to deal with account names and types but 
  # private methods that store and update pin numbers. If I move "private" above the virus_effect method, you will
  # be unable to call it from outside the class.
  private 

  # This method takes the state's population data and calculates how many deaths could occur. The higher the 
  # population density the more deaths.
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
    print "#{@state} will lose #{seperate_comma(number_of_deaths)} people in this outbreak"
  end

  # This method takes the state's population data and calculates how quickly the virus will spread. The output is 
  # in months or fraction thereof. The higher the population density, the faster it will spread.
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

# Refactored ===========================================================

class VirusPredictor
  # I automated the initialization method to pull in the data from the STATE_DATA hash. Now all that's needed 
  # to initialize a new member of the class is the state name. For example: alabama = VirusPredictor.new("Alabama") 
  # You can then call alabama.virus_effect to get the individual state's report.
  def initialize(state)
    @data = STATE_DATA[state]
    @state = state
    @population = @data[:population]
    @population_density = @data[:population_density]
    @region = @data[:region]
    @next_region = @data[:regional_spread]
  end

  def virus_effects
    impact
  end

  private
  # The predicted_deaths and speed_of_spread were both calculating based on @population_density. As such, they can 
  # be combined into one cleaner method.
  def impact    
    speed = 0.0
    case 
      when @population_density >= 200
        number_of_deaths = (@population * 0.4).floor
        speed += 0.5
      when @population_density >= 150
        number_of_deaths = (@population * 0.3).floor
        speed += 1
      when @population_density >= 100
        number_of_deaths = (@population * 0.2).floor
        speed += 1.5
      when @population_density >= 50
        number_of_deaths = (@population * 0.1).floor
        speed += 2
      else
        number_of_deaths = (@population * 0.05).floor
        speed += 2.5
      end
    puts "#{@state} will lose #{separate_comma(number_of_deaths)} people in this outbreak and it will spread across 
    the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE

# Initialize VirusPredictor for each state one at a time

alabama = VirusPredictor.new("Alabama")
alabama.virus_effects  
# => "Alabama will lose 482,202 people in this outbreak and it will spread across the state in 2.0 months."

nevada = VirusPredictor.new("Nevada")
nevada.virus_effects   
# => "Nevada will lose 137,946 people in this outbreak and it will spread across the state in 2.5 months."

# Initialize VirusPredictor for all states

report = STATE_DATA.map{|state, date| VirusPredictor.new(state)}  
report.each {|state| state.virus_effects }  # Returns the report for all states


