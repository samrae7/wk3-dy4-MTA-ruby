subway = {
 'N' => ['Times Square', '34th', 'n28th', 'n23rd', 'Union Square', 'n8th'],
 'L' => ['l8th', '6th', 'Union Square', '3rd', '1st'],
 'six' => ['Grand Central', '33rd', '6_28th', '6_23rd', 'Union Square', 'Astor Place'] 
}

puts "What line are you starting with #{subway.keys}?"
start_line = gets.chomp
puts "You're starting on " + start_line

puts "What station are you leaving from #{subway[start_line]}?"
start_station = gets.chomp
puts "You're leaving from " + start_station

puts "What line are you arriving on #{subway.keys}?"
end_line = gets.chomp
puts "You're ending your journey on " + end_line

puts "What station are you ending at #{subway[end_line]}?"
end_station = gets.chomp
puts "You're ending at " + end_station


#if they are on the same line, find the difference between their indexes
if start_line === end_line
  # print 'start station index: '+subway[:start_line].index(start_station)
  difference = subway[start_line].index(end_station) - subway[end_line].index(start_station)
  journeyLength = difference.abs
  Puts 'Your journey will be ' + journeyLength.to_s + 'stops.'
else
  difference1 = subway[start_line].index('Union Square') - subway[start_line].index(start_station)
  puts 'First part of journey is ' + difference1.abs.to_s + ' stops'
  difference2 = subway[end_line].index(end_station) - subway[end_line].index('Union Square')
  puts 'Second part of journey is ' + difference2.abs.to_s + ' stops'
  journeyLength = difference1.abs + difference2.abs
  puts 'Total length of journey is '+ journeyLength.to_s + ' stops'
end





