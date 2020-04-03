# code here!
#attr_accessor : name, : roster
class School
  attr_accessor :name, :roster, :student_name
#attr_accessor :student_name

  def initialize(name)
    @roster  = {}
    @name = name

  end

  def add_student(student_name, grade)
    if !@roster.has_key?(grade)
        @roster[grade] = []
    end
        @roster[grade] << student_name
 end

 def grade(grade)

  return @roster[grade]

 end

 def  sort

   @roster.each do|grade,name|
         @roster[grade] = name.sort
    end
  end
end
