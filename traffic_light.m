%Stanislav Iliev
%Kaloyan Nikov
%Emiliyan Sokolov

function stats = traffic_light(interval, total_steps, red_steps, green_steps, green_passing, car_chance)
	cars = 0
	cars_passed = []
	
	for i = 0:total_steps:(red_steps+green_steps)
		if randi([1, 10]) <= car_chance/10
			cars += 1
			cars_passed(end+1) = cars
		end
		
		for k = 0:red_steps:interval
			if randi([1, 10]) <= car_chance/10
				cars += 1
				cars_passed(end+1) = cars
			end
		end
	
		for j = 0:green_steps:interval
			if randi([1, 10]) <= car_chance/10
				cars += 1
			end
			
			cars -= green_passing
			cars_passed(end+1) = cars
		end
	end
	
	stats = cars_passed
endfunction
