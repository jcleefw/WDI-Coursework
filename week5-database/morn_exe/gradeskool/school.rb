require 'pry'

class School

  attr_reader :db

  def initialize school_name
    @school_name = school_name
    @db = {}
  end

  def add student_name, grade
    @db[grade] ||= []

    # if @db[grade].nil?
    #   @db[grade] = [student_name]
    # else
    @db[grade] << student_name
    #end
  end

  def grade grade_group
    puts @db[grade_group]
  end

  def sort
    # sort_array = {}
    # @db.sort.map do |grade, student_name|
    #   sort_array[grade] = student_name.sort
    # end
    # return sort_array
    @db.sort.inject({}) do |memo, elem|
      memo[elem.first] = elem.last.sort
      memo
    end
  end

end

school = School.new("Haleakala Hippy School")
school.add("Phil", 2)
school.add("Jennifer", 3)
school.add("Little Billy", 1)
school.add("James", 2)
school.grade(2)
school.db
binding.pry

