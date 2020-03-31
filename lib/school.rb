class School
  
 def initialize(name) 
   @name = name 
   @roster = {}
 end 
 
 def name=(name)
   @name = name
 end
 
 def name 
   @name
 end 
 
 def roster
   @roster 
 end 
 
 def add_student(student_name, grade)
  
  if(@roster.keys.include?(grade))
  #we want this to run when no grade level currently exist 
    @roster[grade] << student_name
  else 
    @roster[grade] = []
    @roster[grade] << student_name
  end
 end
 
 def grade(grade)
  @roster.values_at(grade).flatten
 end 

 def sort 
  ordered_roster = {}
  @roster.each { |grade, student_name|
    ordered_roster[grade] = student_name.sort
  }
  ordered_roster
 end 
end



