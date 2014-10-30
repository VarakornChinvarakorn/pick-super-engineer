#function pick_engineer will find name of engineer from "engineers.txt"
def pick_engineer(string = "")
	#initial array engineer to store each text line => engineer's name 
	engineer = File.readlines("engineers.txt") 
	engineer.each do |i|
		if i.index(string) != nil
			return i
		end
	end
	return "NotFound"
end

def featureA(engineer)
	#initial array subname to store each sub name => firstname midname surname  
	sub = Array.new()
	sub = engineer.split(' ')

	#initial string a to store dot style 
	a = ""
	sub.each do |n|
		if n == sub.last
			a = a + n				 
			break
		end
		a = a + n + '.'
	end
	
	return a
end

def featureB(engineer)  
	# convert string to an array of characters with the split method. 
	a = engineer.split(' ') 	 
	b = Array.new 			# create new array => [] 
	# convert string into array, split on an empty string delimiter. 
	b = a[1].split("") 		 
	return a[0]+' '+b[0] +'...' 	# show output------- 
end 

<<<<<<< HEAD
puts "Enter name : "
search = gets.chomp

name = pick_engineer(search)
=======
name = pick_engineer(ARGV[0])
>>>>>>> 83405b0eca9a0543d4014c76e91cf4702b5c66c3
puts "1. %s" % [name]

puts "2. %s" % [featureA(name)]

puts "3. %s" % [featureB(name)]
