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
  s = (a+b+c)/2.0
  
  # the following must be positive to be a valid triangle
  p = (s-a)*(s-b)*(s-c)
  if a<=0 || b<=0 || c<=0 || p<=0 then
  	raise TriangleError
  end

  return :equilateral if a==b && b==c
  return :scalene if a!=b && b!=c && a!=c
  return :isosceles 
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
