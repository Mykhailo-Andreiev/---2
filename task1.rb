class Figure
  def area
    raise NotImplementedError, "Метод 'area' має бути реалізований у підкласі"
  end
end

class Square < Figure
  def initialize(side)
    @side = side
  end

  def area
    @side * @side
  end
end

class Triangle < Figure
  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    0.5 * @base * @height
  end
end

square = Square.new(4)
puts "\nПлоща квадрата: #{square.area}" 

triangle = Triangle.new(6, 3)
puts "Площа трикутника: #{triangle.area}"
