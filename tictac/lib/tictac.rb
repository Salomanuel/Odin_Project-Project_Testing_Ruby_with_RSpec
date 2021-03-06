#optimize score
#filter invalid inputs
#privatize methods
module Board
	def initialize_board
		board_creator
		show_board
	end
	
	def show_board
		print " ABC\n"		#horizont axis
		@@board.each_with_index do |row,x| 
			print x+1				#vertical axis
			row.each_with_index do |line,y| 
				case line
				when nil 		then print "."
				when true		then print "X"
				when false 	then print "O"
				end
			end
			puts
		end
	end

	private
	def board_creator
		@@board = []
		3.times do |j|								#3 rows
			row = []
			3.times { row << nil }			#3 columns
			@@board << row
		end
	end
	def board
		@@board
	end
end

module Players
	@@player ||= false
	def change_player
		case @@player
		when true 	then @@player = false
		when false 	then @@player = true
		end
		puts "it's #{@@player ? "player 1" : "player 2"}'s turn"
	end

	def player
		@@player
	end
end

module TictacScore
	def score_check								
		reset_counts									#diagonal1
		0.upto(2) { |j| analyzer(board[j][j])}
		win
									
		reset_counts									#diagonal2
		arra = [0,1,2]
		arra.each { |j| analyzer(board[j][-(j+1)]) }
		win

		board.each_index do |x| 
			reset_counts
			board[x].each_index do |y| 	#horizontal
				analyzer(board[x][y])
				win
			end			
			reset_counts
			board[x].each_index do |y| 	#vertical
				analyzer(board[y][x])
				win
			end			
		end
		tie
	end


	def reset_counts
		@p1 = 0
		@p2 = 0
	end

	def analyzer(cell)
		case cell
		when true 	then @p1 += 1
		when false	then @p2 += 1
		end
	end

	private
	def win
		if @p1 >=3 or @p2 >=3
			puts "#{player ? "player 1" : "player 2"} won!"
			exit
		end
	end

	def tie
		if !board.flatten.include?(nil)
			puts "it's a tie!" 
			exit
		end
	end
end

module TictacInterface
	def welcome
		puts "Welcome to TicTac!"
		puts "here is the board:\n\n"
		initialize_board
		puts "\nlet's go\n\n"
	end

	def send_move
		puts "write the coordinates"
		choice = gets.chomp.split("")
		case choice[0].downcase
		when "a" then choice[0] = 0
		when "b" then choice[0] = 1
		when "c" then choice[0] = 2
		end
 		self.move((choice[1].to_i - 1), choice[0])
 	end
end

class Tictac
					
	include Board
	include Players
	include TictacScore
	include TictacInterface
	def initialize
		welcome
		@move_count = 0
	end

	def start_game
		before_turn
	end

	def before_turn
		@move_count += 1
		puts "*" * 30
		puts "\tturn #{@move_count}"
		change_player
		send_move
		after_turn
	end

	def after_turn
		show_board
		score_check
		before_turn
	end

	def move(x,y)
		if @@board[x][y] == nil
			 @@board[x][y] = @@player ? true : false
		else
			puts "\nyou cannot do this move\n"
			send_move
		end	
	end
end


# uno = Tictac.new
=begin
uno.move(0,0)		#diagonal score p2
uno.move(0,2)
uno.move(1,0)
uno.move(1,1)
uno.move(2,2)
uno.move(2,0)
		
uno.move(0,1)		#vertical score p2
uno.move(0,0)
uno.move(1,1)
uno.move(1,0)
uno.move(2,2)
uno.move(2,0)

uno.move(0,0)		#horizontal score
uno.move(1,0)
uno.move(0,1)
uno.move(1,1)
uno.move(0,2)
uno.move(1,2)


#require 'minitest/autorun'
#require 'minitest/pride'
#class FirstTests < Minitest::Test end

=end

# Tictac.new.start_game
