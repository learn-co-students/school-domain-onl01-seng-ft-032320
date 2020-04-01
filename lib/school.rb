# code here!

class School
  
  
  def initialize(name)
    @name = name
    @roster = Hash.new{ |h, k| h[k] = [] }
  end
  
  def roster 
    @roster
  end
  
  def add_student(student_name, grade)
    @roster[grade] << student_name
    
  end
  
  def grade(grade)
    @grade = grade
    @roster[@grade]
  end
  
  def sort
    @result = {}
    @roster.each do |key, value|
      @key = key
      @value = value
      # @result[@key] = []
      @result[@key] = @value.sort 
    end
    @result
    
  end
  
end