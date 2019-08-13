#console.rb wouldn't load

require "pry"
require_relative "boatingtest.rb"
require_relative "instructor.rb"
require_relative "student.rb"

#patrick = Student.new("Patrick")
#bt1 # = student, name, status, instructor

#pass_student(student, test)

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

binding.pry
puts "finished testing"