class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end 
  
  def grade(grade)
    roster.detect do |i, j| 
      if i == grade
        return j
      end 
    end 
  end 
  
def sort 
  new_hash = {}
  roster.each do |i, j| 
    new_hash[i] = j.sort 
  end 
  new_hash
end 
  
end 
