require_relative = 'hero'  


  def to_s
    puts "HERO: #{@name.capitalize}, POWERLEVEL: #{@power}"
  end

  


hero1 = Hero.new('batman', 7)
hero1.to_s
