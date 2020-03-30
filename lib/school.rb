# code here!

class School
  
  attr_reader :name, :roster
  def initialize(name)
    @name= name
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  
  def grade(num)
    roster[num]
  end
  
  def sort
    new_roster = {}
    roster.map do |grade,student|
        new_roster[grade] = student.sort
    end
    new_roster
  end
  
  
end