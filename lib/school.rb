class School
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def name
    @name
  end
  
  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
    @roster[grade]=[name]
    end
  end
  
  def roster
    @roster 
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, student| student.sort!
    
  end
  end
  
  
end