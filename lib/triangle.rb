class Triangle

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  # def equilateral
  #   (@side_a == @side_b) && (@side_b == @side_c)
  # end

  # def isosceles
  #   (@side_a == @side_b) || (@side_b == @side_c) || (@side_a == @side_c)
  # end

  # def scalene
  #   (@side_a != @side_b) && (@side_b != @side_c) && (@side_a != @side_c)
  # end


  def kind()
    if (@side_a <= 0) || (@side_b <= 0) || (@side_c <= 0)
      raise TriangleError
    elsif (@side_a+@side_b <= @side_c) || (@side_a+@side_c <= @side_b) || (@side_b+@side_c <= @side_a)
      raise TriangleError
    elsif (@side_a == @side_b) && (@side_b == @side_c)
      :equilateral
      elsif
        (@side_a == @side_b) || (@side_b == @side_c) || (@side_a == @side_c)
        :isosceles
      elsif
        (@side_a != @side_b) && (@side_b != @side_c) && (@side_a != @side_c)
        :scalene
      end
    end

  class TriangleError < StandardError
  end
end
