puts 1 > 2
puts 1 < 2
puts 5 >= 5
puts 5 <= 4
puts 1 == 1
puts 2 != 1
puts 'cat' < 'dog'
puts ''

puts 'Hello, what is your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
  puts 'What a cute name!'
end
puts ''

puts 'I preditor of fate. Tell me your name: '
name = gets.chomp
if name == 'Chris'
  puts 'I see in your future great deals!'
else
  puts 'Your future... Oh my God! Look at the watch!'
  puts 'I really need to go, I`m sorry'
end
puts ''

puts 'Hello and welcome in 7th grade on English lesson'
puts 'My name Mrs. Gaberd. And your name...?'
name = gets.chomp
if name == name.capitalize
  puts 'Seat down, please, ' + name + '.'
else
  puts name + '? Did you mean: ' + name.capitalize + ', didn`t you?'
  puts 'Don`t you know how to write your name?'
  reply = gets.chomp
  if reply == 'yes'
    puts 'Hmm! Ok, seat down!'
  else
    puts 'GET OUT!'
  end
end
puts ''

puts 'Print a command'
command = ''
while command != 'bye'
  puts command
  command = gets.chomp
end
puts 'Come again'
puts ''

puts 'Hello, what is you name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if (name == 'Chris'or name =='Katy')
  puts 'What a cute name!'
end
puts ''

# babushka
print 'Deaf granny'
puts ' '
puts 'What do you want, grandson?'
question = gets.chomp

while question != 'BYE BYE BYE'
  if question == question.upcase
    puts 'NO,never from ' + rand(1938..1951).to_s + ' year!'
  else
    puts 'What? Tell it loader grandson!'
  end

  question = gets.chomp
end
puts 'Bye!'
puts ''

#Leap year
puts 'Enter start year'
start = gets.chomp.to_i
puts 'Enter finish year'
finish = gets.chomp.to_i
(start..finish).each do |year|
  puts year if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end


