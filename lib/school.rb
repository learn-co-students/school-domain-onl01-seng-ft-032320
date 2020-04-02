class School
  #defines only the getter
  attr_reader :roster, :school
  # Create empty roster
  def initialize(school)
    @roster = {}
    @school = school
  end

  def add_student(student_name, grade)
    if !@roster[grade].is_a?(Array)
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade)
   @roster[grade]
  end

  def sort

    roster.map do |grade, name|
     @roster[grade] = name.sort
   end
    @roster
  end
end
