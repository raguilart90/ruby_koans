# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  #--
  hyp, cat1, cat2 = if a > b && a > c
  	[a, b, c]
  else if b > c && b > a
  	[b, a, c]
  else
  	[c, a, b]
  end
  
  if cat1 <= 0 || cat2 <= 0 || hyp <= 0
  	raise TriangleError
  else if cat1 + cat2 <= hyp
  	raise TriangleError
  end

  type = if hyp == cat1 && hyp == cat2
  	:equilateral
  else if hyp == cat1 || hyp == cat2
  	:isosceles
  else
  	:scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
