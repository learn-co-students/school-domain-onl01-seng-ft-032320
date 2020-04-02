class School
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(name, grade)
  
   @roster[grade] = [] if @roster[grade].nil? 
    @roster[grade] << name
  end
  
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
   @roster.each { |grade, name| @roster[grade] = name.sort}
  end
    
  
  
end