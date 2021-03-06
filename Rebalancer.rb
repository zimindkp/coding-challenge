# Kishan Parekh
#
# Wealth Simple Coding Challenge
# June 9 2014
# This Ruby script takes a portfolio input as a text file and outputs the set of transactions required for target share requirements
# ===============================================================

#!/usr/bin/env ruby -w

def calculate(a,b)
#This method calculates the difference between the shares required and shares currently held.
	if(((a-b)<0) && ((b-a>1)))
		j = Integer(b-a)
		var = "Sell #{j}"
		return var
#Based on the differences, we either buy or sell the shares
	elsif((a-b>1))
		j = Integer(a-b)
		var = "Buy #{j}"
		return var
	else
		return 0
	end
end

require 'csv'
#This is the most important gem used, underlying the assumption the data format will be in csv or similar
filename = ARGV[0]
#An assumption is made that there will be a file on hand to use with adequate data.
stocks = {}
#Initialising the hash array

CSV.foreach(filename, :headers => true, :header_converters => :symbol, :converters => :all) do |row|
  stocks[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
end
#The CSV gem's method has been used to obtain data from a file and convert it into an array of hashes.
#If needed, we can forgo the use of the CSV gem and hard code according to different formats. It is easily customisable.
#If the csv file has no headers then we can add our own headers and modify the code above.

a=0
sum = 0
#Initialsing variables here
stocks.each do |key, value|
  a = value[:share]* value[:price]
  sum = sum + a
end
#The above code calculates the total sum of money in the portfolio, which is required to calculate for rebalancing.
#At this stage, one should know the headings of the file and modify if needed.

stocks.each do |key, value|
#Since we have used an array of hashes, a key value pair is used to access each element
	y = value[:target]*0.01*sum/value[:price]
	x = value[:share]
#From the above, the required number of shares to reach the target goal for that company is calculated
	d= calculate(y,x)
#The method in the beginning is called to obtain information on whether to sell, buy or leave the shares as is.
	if(d!=0)
		print "%s shares of %s. "  % [d, key]
#The results are printed out on standard output.
	end
end