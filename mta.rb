subway = {
 N: ['Times Square', '34th', 'n28th', 'n23rd', 'Union Square', 'n8th'],
 L: ['l8th', '6th', 'Union Square', '3rd', '1st'],
 six: ['Grand Central', '33rd', '6_28th', '6_23rd', 'Union Square', 'Astor Place'] 
}


puts 'What is you start station?'
puts subway[:N]
puts subway[:L]
puts subway[:six]
start_station = gets
puts 'Your start station is '+start_station

puts 'What is you end station?'
puts subway[:N]
puts subway[:L]
puts subway[:six]
end_station = gets
puts 'Your end station is '+end_station

if subway[:N].include? start_station
start_station_line='N'
elsif subway[:L].include? start_station
start_station_line='L'
elsif subway[:six].include? start_station
start_station_line='six'
end

puts 'Your start line is ' + start_station_line

if subway[:N].include? end_station
end_station_line='N'
elsif subway[:L].include? end_station
end_station_line='L'
elsif subway[:six].include? end_station
end_station_line='six'
end

puts 'Your end line is '+end_station_line




  

#check to see which array start station is on
#check to see what array end station is in

#if they are on the same line, find the difference between their indexes

#if different check both to see how many stops to union square and add together
