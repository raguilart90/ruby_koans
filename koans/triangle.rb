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

  hyp, cat1, cat2 = if a > b && a > c
  						[a, b, c]
  					elsif b > a && b > c
  						[b, a, c]
  					else
  						[c, a, b]
  					end

  if cat1 <= 0 || cat2 <= 0 || hyp <= 0
  	raise TriangleError
  elsif cat1 + cat2 <= hyp
  	raise TriangleError
  end

  if hyp == cat1 && hyp == cat2
  	return :equilateral
  elsif hyp == cat1 || hyp == cat2 || cat1 == cat2
  	return :isosceles  	
  else
  	return :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
