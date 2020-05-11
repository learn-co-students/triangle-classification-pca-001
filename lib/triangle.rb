class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    raise TriangleError unless valid_triangle

    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      false
    elsif (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side3 + @side1 <= @side2)
      false
    else
      true
    end
  end

  class TriangleError < StandardError
    def message
      puts "Not a valid triangle"
    end
  end
end
