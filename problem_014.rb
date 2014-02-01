def gen_collatz(start_num, result=[])
	result << start_num
	if start_num.even?
		next_start_num = start_num / 2
		gen_collatz(next_start_num, result)
	elsif start_num == 1
		result
	else
		next_start_num = start_num * 3 + 1
		gen_collatz(next_start_num, result)
	end
end
collatz_proc = Proc.new { |start_num| gen_collatz(start_num) }
def longest_seq(max_inital_num, seq_generator)
	longest_length = 0
	current_champ = "noone yet"
	(3..max_inital_num).each do |seq_starter|
		current_length = (seq_generator.call(seq_starter)).count
		if current_length > longest_length
			current_champ = seq_starter 
			longest_length = current_length
		end
	end
	current_champ
end
p longest_seq(1000000, collatz_proc)