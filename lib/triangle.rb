class Triangle
  attr_accessor :side_a, :side_b, :side_c
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    validate_triangle
    if side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_tri = [(side_a + side_b > side_c), (side_b + side_c > side_a), (side_a + side_c > side_b)]
    [side_a, side_b, side_c].each do |side|
      if side <= 0
        real_tri << false
      end
      if real_tri.include?(false)
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
  end

end

