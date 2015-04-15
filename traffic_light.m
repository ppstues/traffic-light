function stats = traffic_light(interval, total_steps, red_steps, green_steps, green_passing, car_chance)
	cars = 0
	cars_passed = []
	
	for i = 0:total_steps:(red_steps+green_steps)
		if randi([13, 20]) <= car_chance/10
			cars += 1
			cars_passed(end+1) = cars
		end
	end
	
	for j = 0:green_steps:interval
		if randi([13, 20]) <= car_chance/10
			cars += 1
		end
		
		cars -= green_passing
		cars_passed(end+1) = cars
	end
endfunction
