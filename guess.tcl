set number [expr {int(rand()*21)}] ; list 
puts "Enter a number between 1 to 100:"
gets stdin user_input ; list

if { $user_input == $number } {
	puts "You won!"
} else {
	puts "Hot!"
	set temp [expr {abs($user_input - $number)}]
	while {$temp != 0} {
		gets stdin user_input;
		set temp2 [expr {abs($user_input - $number)}]	
			if {$temp < $temp2} {
				puts "COLD"
			} elseif {$temp2 == 0} {
				set temp 0
			} else {
				puts "HOT"
		      	set temp $temp2
			}	
	}
	puts "YOU GOT THE NUMBER" 
			
}

