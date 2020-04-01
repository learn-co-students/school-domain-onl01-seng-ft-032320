# code here!
class School
#defines the setter and getter
  attr_accessor :grade
    #defines only the getter
  attr_reader :roster, :name

ROSTER = {}
  # Create empty roster
  def initialize(roster)
    @roster = roster
    #@roster= {}
  end

  def add_student (name, grade)
    @name = name
    @grade = grade


#-- create an if, if grade is already in roster, just assign the name to assocaiated key

    # create a key for @grade
    @roster[@grade] = grade

    #value will be @name
    @roster[@grade] << name
  end


end
