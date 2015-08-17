class Board

	def initialize()
	@board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	end

	def print_it
		puts "______"
		print @board[0], " ", @board[1], " ", @board[2]
		puts
		print @board[3], " ", @board[4], " ", @board[5]
		puts
		print @board[6], " ", @board[7], " ", @board[8]
		puts
		puts "______"
	end
	
	def play(choice, player) 
		i = choice.to_i - 1
		if choice == "1" || choice == "2" || choice == "3" || choice == "4" || choice == "5" || choice == "6" || choice == "7" || choice == "8" || choice == "9"  
				if @board[i] != "X" && @board[i] != "O" && player == 1
					@board[i] = "X"
				else @board[i] != "X" && @board[i] != "O" && player == 2
					@board[i] = "O"
				end
		else return false                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
		end
	end
			
	
	def check_victory_x
			if @board[0] == "X" && @board[1] == "X" && @board[2] == "X"
			return true
		elsif @board[3] == "X" && @board[4] == "X" && @board[5] == "X"
			return true
		elsif @board[6] == "X" && @board[7] == "X" && @board[8] == "X"
			return true
		elsif @board[0] == "X" && @board[3] == "X" && @board[6] == "X"
			return true
		elsif @board[1] == "X" && @board[4] == "X" && @board[7] == "X"
			return true
		elsif @board[2] == "X" && @board[5] == "X" && @board[8] == "X"
			return true
		elsif @board[0] == "X" && @board[4] == "X" && @board[8] == "X"
			return true
		elsif @board[6] == "X" && @board[4] == "X" && @board[2] == "X"
			return true
		else
			return false
		end
	end
	
	def check_victory_o
		if @board[0] == "O" && @board[1] == "O" && @board[2] == "O"
			return true
		elsif @board[3] == "O" && @board[4] == "O" && @board[5] == "O"
			return true
		elsif @board[6] == "O" && @board[7] == "O" && @board[8] == "O"
			return true
		elsif @board[0] == "O" && @board[3] == "O" && @board[6] == "O"
			return true
		elsif @board[1] == "O" && @board[4] == "O" && @board[7] == "O"
			return true
		elsif @board[2] == "O" && @board[5] == "O" && @board[8] == "O"
			return true
		elsif @board[0] == "O" && @board[4] == "O" && @board[8] == "O"
			return true
		elsif @board[6] == "O" && @board[4] == "O" && @board[2] == "O"
			return true
		else
			return false
		end
	end

	attr_reader :board
end

board = Board.new




puts "Get ready to play Tic Tac Toe!!!"

while true do

	board.print_it

	puts "!!!PLAYER ONE!!!"
	puts "Which coordinate do you want to put an X on? (123...etc)"
	choice_1 = gets.chomp
			
		if board.play(choice_1, 1) then else puts "Try entering a number like 123 etc!" end	
	
		board.print_it
		if board.check_victory_x then break end
	
		puts "!!!PLAYER TWO!!!"
		puts "Which coordinate do you want to put an O on? (123...etc)"
		choice_2 = gets.chomp
		
		if board.play(choice_2, 2) then else puts "Try entering a number like 123 etc!" end	
		
		board.print_it
		if board.check_victory_o then break end
end

	if board.check_victory_x
		puts "Player one wins ~_^"
	elsif board.check_victory_o
		puts "Player two wins ~_^"
	else
		puts "some other condition"
	end
	
