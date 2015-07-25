=begin 
#1(RAW) player name, health, to string , raw data
#2 (METHOD) changed to definition that calls name and health as well as calling to_s inside definition
(the parameters inside the definition == state.) to_s is the behaviour
#3 (CLASS) don't forget.. TELL, DONT ASK! dont ask the object for its state!.. tell the object what to do!
by calling a method (creating a method inside the code!) now a class will have the initialize bedise the state or parameters
while the behaviour will be called out by creating the methods inside/
#4 (ATTRIBUTES)creating setter and getter methods, which can call within the object range outside the method class
and can call directly to initialized variables depending on the attr that being used. writer, reader, accessor
#5 (ARRAYS) we can create and array to fit in the objects we created. inside the array whihch by using iterators like, each, while , different loops
can also call the instance methods we created 
#6 interaction


=end

# we setup a state with the initialize method
class Player
  attr_accessor :str
  attr_reader :name, :str, :health
  def initialize(name, str=0, health) # state stored as instance variables
    @name = name.capitalize
    @str = str
    @health = health
  end

  #behaviours expressed as instance methods. inside of the clas
  def remove_life
    @health -= 50
  end
  
  def add_life
    @health += 10
  end
  
  def str_up
    @str = 10
  end
  
  def str_down
    @str -= 10
  end
  
  def normalize
    @health = 100
    @str = 0
  end

  def to_s
    "The new player's name is #{@name}, health of #{@health}"
  end
end

class World
  def initialize(world)
    @world = world
    @char = []
  end
  
  def add_player(player)
    @char << player
  end
  
  def state
    @char.each do |player|
    player.remove_life
       puts player
       p "Welcome to #{@world} level"
    end
  end
  
  def new_state
    @char.each {|player| player.normalize}
    puts @char
  end
end
# then we use the class to create OBJECTS.. to call those instance methods on the object.   

p1 = Player.new('mario',75,100)
p2 = Player.new('luigi',55,100)
p3 = Player.new('peach',100)
p4 = Player.new('bowser',100)

char = [p1,p2,p3,p4]

world1 = World.new('sunny')
world1.add_player(p1)
world1.state
world1.new_state

  