



def navigate(current_square, right_square)
	total = 0

	if right_square.hole?
		evade_hole(current_square, right_square)
	end

	if right_square.empty?
		move_right
	end

	if current_square.number?
		total = total + current_square.number
		self.eval_right_square(right_square)
	end

end

def move_right()

end

def evade_hole(current_square, right_square)


end

human = Human.new()
navigate(current_square, right_square)