class Person
	
	def initialize (name)
		@name = name
	end

	def greet
		puts "Hi, my name is #{@name}"
	end

end



class Student < Person

	def learn
		puts "I get it!"
	end


end


class Instructor < Person

	def teach
		puts "Everything in Ruby is an Object"
	end

end

teacher = Instructor.new("Chris")
teacher.greet


student = Student.new("Cristina")
student.greet

teacher.teach 
student.learn
student.teach # no teach method in Student class