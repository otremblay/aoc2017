#!/usr/bin/env ruby
require "csv"
checksum = 0
checksum2 = 0
CSV.foreach("input-advent2.csv", {:col_sep => "\t"}) do |row|
	r2 = row.map do |item|
		item.to_i
	end
	checksum += r2.max - r2.min
	for i in 0..(r2.length() -2) do
		for j in (i+1)..(r2.length()-1) do
			if r2[i] > r2[j] then
				if r2[i] % r2[j] == 0 then
					checksum2 += r2[i] / r2[j]
				end
			else
				if r2[j] % r2[i] == 0 then
					checksum2 += r2[j] / r2[i]
				end
			end
		end
	end
end
puts checksum
puts checksum2