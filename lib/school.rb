class School

  attr_accessor
  attr_reader :school, :roster


  def initialize(school)
    @school = school
    @roster = roster
    @roster= {}
  end

  def add_student(student_name, grade)
    if !roster[grade].is_a?(Array)
      roster[grade] =[]
    end
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.map do |grade, name|
      roster[grade] = name.sort
      roster.sort
    end
    roster
  end

end
