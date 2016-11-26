#(1..10).map { |x| x }.tap { |x| puts "array: #{x.length} items long"}.join

class Genre
	attr_accessor :name
end

genre = Genre.new.tap { |g| g.name = 'rap' }

puts genre.name
