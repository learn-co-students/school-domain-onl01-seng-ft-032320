class School
  
  def initialize(school_name)
    @schoolname = school_name
    @roster = {}
  end
  
  def roster
    @roster
  end

  def add_student(name, grade)
    @name = name 
    @grade = grade
    
    if @roster.include?(grade) == false
    @roster[grade] = []
    @roster[grade] << name 
    else @roster[grade] << name
    end
  end 
  
  def grade(grade)
    @roster[grade]
  end 
   
  def sort 
    @roster.each do |grade, name|
      @roster[grade] = name.sort 
    end
  end  
    
end
