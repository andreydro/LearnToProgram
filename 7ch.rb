names = ['Ada','Bell', 'Chris']
puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]

languages = ['English', 'German', 'Ruby']
languages.each do |lang|
  puts 'I like '+ lang + '!'
  puts 'Do you?'
end
puts 'So, let`s listen opinion about C++`'
puts'...'

3.times do
  puts 'hip hip hooray'
end
puts''

foods = ['Artishok', 'Briosh', 'Caramel']
puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join(' :) ') + ' 8)'
200.times do
  puts []
end
puts
favorites = []
favorites.push 'drops of rain on roses'
favorites.push 'drops of whisky on cats'
puts favorites[0]
puts favorites.last
puts favorites.length
puts favorites.pop
puts favorites
puts favorites.length
puts

# Sorting an Array
words = []
puts 'Enter word'
while true
  word = gets.chomp
  words.push word
  if word.length == 0
    puts words.sort
  end
end
puts

# Sorting an Array without .sort method
# doesn`t work properly

arr = []
wor4 = ' '
while wor4 != ''
  puts 'Enter a string:'
  wor4 = gets.chomp
  if wor4.length > 0
    arr.push wor4.to_s
  end
end
puts 'The length of list is: ' + arr.length.to_s
i = 0
j = i + 1
while i < (arr.length - 1)
  while j < arr.length
    if arr[i] > arr[j]
      arr[i] , arr[j] = arr[j] , arr[i]
    else
      i = i + 1
      j = i + 1
    end
  end
end
puts 'Sorted list:'
puts arr
puts

# New content program
content = ['Content','Chapter 1: Integers','Chapter 2: Symbles','Chapter 3: Variables', 'page 1', 'page 72', 'page 118']
lineWidth = 50
puts content[0].center(lineWidth)
puts
puts content[1].ljust(0) + content[4].rjust(lineWidth)
puts content[2].ljust(0) + content[5].rjust(lineWidth)
puts content[3].ljust(0) + content[5].rjust(lineWidth)
puts