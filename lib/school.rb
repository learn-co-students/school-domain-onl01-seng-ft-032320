# code here!
class School
  attr_reader :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] = [] unless @roster.key?(grade)
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_roster = {}
    
    @roster.each do |key, value|
      sorted_roster[key] = value.sort
    end
    sorted_roster
  end
end