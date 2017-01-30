

def conduct_test
	questions = [{:id => 1, :question => "baba?", 				:answer => "baba"}, 
			     {:id => 2, :question => "yaga?", 				:answer => "yaga"}, 
			     {:id => 3, :question => "how big ia america",  :answer => "very"}]

	score = make_test(questions)
	puts "your score is: #{score}"
end 

def make_test(questions) # prepares questions and gets answes from users than sends to check test
	selected_questions = questions.shuffle.take(2)
	new_selected_questions = get_answers(selected_questions)
	score = check_test(new_selected_questions)
	score
end 

def get_answers(selected_questions) # gets answers from users  and sends to make test function 

	new_selected_questions = []
	selected_questions.each do |obj|
	
		puts "give me your answers"
		puts obj[:question]
		input = gets.chomp
		new_hash = {obj[:user_answer] => input}
		new_selected_questions << new_hash
		
	end 	
	new_selected_questions	
end 

def check_test(new_selected_questions)
	score = 0 
	puts "I am checking..."
	new_selected_questions.each do |obj| 
		puts obj[:answer]
		puts obj[:user_answer]
		
		score += 1 if obj[:answer] == obj[:user_answer]
	end 
	score
end 

conduct_test

