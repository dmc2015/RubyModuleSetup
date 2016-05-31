require_relative '../modules/ClassLevelInheritableAttributes'


class Polygon
  include ClassLevelInheritableAttributes
  # include ClassLevelInheritableAttributes::ClassMethods
  inheritable_attributes :sides, :coolnes
  @sides = 8
  @coolnes = 'Very'
end

class Triangle < Polygon
  @sides = 3
end



class Octogon < Polygon
  @sides = 5
end


print 'Polygon sides', Polygon.sides, "\n"

print 'Octogon sides', Octogon.sides, "\n"

print 'Triangle sides', Triangle.sides, "\n"
