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
require "set"

def triangle(a, b, c)
  if a <= 0 or b <= 0 or c <= 0
    raise TriangleError
  end

  sorted = [a, b, c].sort.reverse
  if sorted[0] >= sorted[1] + sorted[2]
    raise TriangleError
  end

  return [:equilateral, :isosceles, :scalene][[a, b, c].to_set.length - 1]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
