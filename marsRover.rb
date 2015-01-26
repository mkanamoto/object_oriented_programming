class Rover

	attr_accessor :x, :y, :direction

	def initialize			
		@x = 1
		@y = 3
		@direction = "N"


	
	def read_instruction (instruction)
		instruction.each_char do |s| 

			if s == "M"
				self.move
			else
				self.turn(s)
			end
		}

	
	end

	def move
		if @direction == "N"
			@y = @y + 1
		elsif @direction == "E"
			@x = @x + 1
		elsif @direction == "S"
			@y = @y - 1
		elsif @direction == "W"
			@x = @x - 1
		end

	end

	def turn (rotation)

		if rotation == "L"

			if @direction == "N"
				@direction = "W"
			elsif @direction == "E"
				@direction = "N"
			elsif @direction == "S"
				@direction = "E"
			elsif @direction == "W"
				@direction = "S"
			end

		elsif rotation == "R"

			if @direction == "N"
				@direction = "E"
			elsif @direction == "E"
				@direction = "S"
			elsif @direction == "S"
				@direction = "W"
			elsif @direction == "W"
				@direction = "N"
			end
		end
	end
	end
end


rov = Rover.new

rov.read_instruction("LMLMLMLMM")

