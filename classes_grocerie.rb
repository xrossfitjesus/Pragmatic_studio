#groceries


class Grocerie
  def initialize(food,price,kind)
    @food = food
    @price = price
    @kind = kind
  end

  def to_s
    puts "food is a #{@food}, #{@price} it is #{@kind}"
  end
  def veg
    puts "#{@food} is a vegetable"
  end
  
  def poultry
    puts "this is the best since its #{@food}"
  end
end

list1 = Grocerie.new('steak',34,'protein')
list2 = Grocerie.new('egplant',7,'carbs')
list3 = Grocerie.new('chicken',12,'protein')

list1.to_s
list2.veg 
list3.poultry