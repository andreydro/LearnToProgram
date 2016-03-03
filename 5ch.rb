var1 = 'bark'
var2 = 'telex'
var3 = 'Do you spell it sentence vise versa?'
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ''

puts 'What is your full name?'
name = gets.chomp
puts 'Do you know that your name consist of '+name.length.to_s+' symbols, '+name+'?'
puts''

letters = 'aAbBcCdDeE' 
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts''

lineWidth = 50
puts ('Here is young miss from Russia:'.center(lineWidth))
puts('Her screaming was terribly powerful'.center(lineWidth))
puts('It wa like a knife'.center(lineWidth))
puts('Nobody were screaming like that'.center(lineWidth))
puts('It was screaming of that miss from Russia'.center(lineWidth))
puts''

lineWidth = 40
str= '-->text<--'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
puts ''

print "Evil Boss"
puts''
puts 'WHAT DO YOU WANT?'
question = gets.chomp
puts 'WHAT MEANS:' + question.to_s + '?!? YOU ARE FIRED'
puts''
 
lineWidth = 50
puts 'Content'.center(lineWidth)
puts''
puts 'Chapter 1: Integers'.ljust(0) + 'page 1'.rjust(lineWidth)
puts 'Chapter 2: Symbles'.ljust(0) + 'page 72'.rjust(lineWidth)
puts 'Chapter 2: Variables'.ljust(0) + 'page 118'.rjust(lineWidth)
puts ''
 
puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts''

puts ((5-2).abs)
puts((2-5).abs)
puts''

puts rand
puts (rand(100))
puts (rand(1))
puts (rand(999999999999999999999999999999999999999))
puts ('Forecast says, that there is a chance ' +rand(101).to_s+'% will be rain')
puts ('But you shouldn`t believe in forecasr')
puts''

srand 1776
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts''

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1+Math.sqrt(5))/2)
