#######################   Part 1   ###############################

stock_dict = { 
	'GM' => 'General Motors',
 	'CAT' => 'Caterpillar', 
 	'EK' => "Eastman Kodak" 
 }

 purchases = [ 
 	[ 'GM', 100, '10-sep-2001', 48 ],
 	[ 'CAT', 100, '1-apr-1999', 24 ],
 	[ 'GM', 200, '1-jul-1998', 56 ]
 ]


def print_info(dict, purchases)
	for company in purchases
		puts "#{dict[company[0]]} : #{company[1] * company[3]}"
	end	
end


print_info(stock_dict, purchases)

###############################################################


def figureEachTotal(purchases)
grouped = Hash.new

	purchases.each do |purchase|
		if !(grouped.has_key? (purchase[0]))
			grouped[purchase[0]] = []
			grouped[purchase[0]].push(purchase.slice(1..3))
		else grouped[purchase[0]].push(purchase.slice(1..3))
		
		end
	end
		puts grouped
end

figureEachTotal(purchases)
