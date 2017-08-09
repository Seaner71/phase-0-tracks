# Virus Predictor 

# I worked on this challenge [by myself].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# basically copies the 'state_data'
# reads named file and executes code
# require wont take a file path - Ruby gems 
# require relative for things locally
require_relative 'state_data'

class VirusPredictor
	# initializes instance of with 3 parametets and add instance variablees
	
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # runs 2 other methods no parameters 
  def virus_effects
    predicted_deaths
    speed_of_spread
    print_report
  end

  private
  # private method 3 parrmeters conditionally checks instance var @pop_density makes a formula based on that puts stmt
  def predicted_deaths
    # predicted deaths is solely based on population density
   number_of_deaths =   if @population_density >= 200
       										(@population * 0.4).floor
    									  elsif @population_density >= 150
       										(@population * 0.3).floor
    										elsif @population_density >= 100
     	 										(@population * 0.2).floor
    									  elsif @population_density >= 50
       										(@population * 0.1).floor
    										else
       										(@population * 0.05).floor
    										end
  end
  # private method 3 parrmeters conditionally checks instance var @pop_density assigns speed to X puts a stmt
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed =    	if @population_density >= 200
      					 	0.5
						    elsif @population_density >= 150
						      1.0
						    elsif @population_density >= 100
						      1.5
						    elsif @population_density >= 50
						      2
						    else
						      2.5
						    end
	end
  def print_report
  	 puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
# dont want to call a new instance of class within a class definition
STATE_DATA.each do |state_name, population|
	state = VirusPredictor.new(state_name, population[:population_density], population[:population])
	state.virus_effects
end

#=======================================================================
# Reflection Section