#method

def weekday
    time = Time.new
    time.strftime("%A")
end

def movie(title,year)
    puts " My favorite Movie is #{title} this was in #{year} and today is #{weekday}"
end



movie("Madmax",2015)
movie("Avenger",2014)
movie("Batman",2013)



class Movie
  def initialize(title,grade)
    @title = title
    @grade = grade
  end
 def list
   p "this movie is #{@title} and year of #{@grade}"
 end
end

movie1 = Movie.new('Batman',2014)
movie2 = Movie.new('Dracula',2015)

movie1.list


