require "pry"

class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    raise TriangleError if valid? != true
    else
      return :equilateral if equilateral?
      return :isosceles if isosceles?
      return :scalene if scalene?
    end
  end

  def equilateral?
    @side1 == @side2 && @side2 == @side3
  end

  def isosceles?
    @side2 == @side3 || @side1 == @side3 || @side1 == @side2
  end

  def scalene?
    @side1 != @side2 && @side1 != @side3 && @side2 != @side3
  end

  def valid?
     @side1.positive? && @side2.positive? && @side3.positive? && inequality?
  end

  def inequality?
    (@side1 + @side2) > @side3 && (@side1 + @side3) > @side2 && (@side2 + @side3) > @side1
  end

  class TriangleError < StandardError
  end
end
