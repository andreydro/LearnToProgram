puts 'Hello! And thx, that you found time'
puts 'to help me in that research. my research'
puts 'conected with styding with thing, how people tret'
puts 'Mexican food. Just think about Mexican food'
puts 'and try answer honestly on all questions,'
puts 'using words yes or no. My research'
puts 'doesn`t conected with bed-wetting.'
puts

# We ask this questions, but ignore answers
good_answer = false
while (not good_answer)
  puts 'Do you like tacos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    good_answer = true
  else
    puts 'Please, answer yes or no.'
  end
end
good_answer = false
while (not good_answer)
  puts 'Do you like burrito?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    good_answer = true
  else
    puts 'Please, answer yes or no.'
  end
end

#We pay attention on this question
good_answer = false
while (not good_answer)
  puts 'Do you wet the bed?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    good_answer = true
    if answer == 'yes'
      wets_bed = true
    else
      wets_bed = false
    end
  else
    puts 'Please, answer yes ot no.'
  end
end
good_answer = false
while (not good_answer)
  puts 'Do you like chimichanga?'
  answer gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    good_answer = true
  else
    puts 'Please, answer yes or no'
  end
end
puts 'And a few more questions...'
good_answer = false
while (not good_answer)
  puts 'Do you like sopapilas?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    good_answer = true
  else
    puts 'Please, answer yes or no.'
  end
end

puts
puts 'Clarification'
puts 'Thanks, that you found time to help'
puts 'our research. Honestly, this research'
puts 'has nothing in common with Mexican food.'
puts 'It`s research of bed-wetting. Mexican food'
puts 'was here only for arouse the vigilance,'
puts 'hoping that you will answer more right.'
puts 'Thanks one more time'
puts
puts wets_bed
puts

def say_moo
  puts 'moooooooo.....'
end
say_moo
say_moo
puts 'cuan-cuan'
say_moo
say_moo
puts

def say_moo(number_of_moos)
  puts 'mooooo....' * number_of_moos
end
say_moo 3
puts 'hru-hru'
puts

def double_this(num)
  num_times2 = num * 2
  puts num.to_s + ' two time will be ' + num_times2.to_s
end
double_this 44
puts

def little_pest(var)
  var = nil
  puts 'Ha-ha! I destroyed your variable!'
end
var = 'You can`t touch my variable!'
little_pest var
puts var

puts

return_val = puts 'It was returned by puts method:'
puts return_val
puts

def say_moo(number_of_moos)
  puts 'mooooo....' * number_of_moos
  'yellow submarine'
end
x = say_moo 2
puts x
puts

# Better version of question program
def ask(question)
  good_answer = false
  while (not good_answer)
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' or reply == 'no')
      good_answer = true
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
    else
      puts 'Please, answer yes or no'
    end
  end

  answer
end
puts 'Hello! And thaks, that you...'
puts
ask 'Do you like tacos?'
ask 'Do you like Burrito?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like chimichanga?'
ask 'Do you like sopapilas?'
ask 'Do you like tamales?'
puts 'And a few more questions...'
ask 'Do you like horchata?'
ask 'Do you like flautas?'
puts
puts wets_bed
puts

def english_number(number)
  #We need numbers only from 0 till 100
  if number < 0
    return 'Please, enter number 0 or bigger'
  end
  if number > 100
    return 'Please, enter number 100 or less'
  end

  num_string = '' #We will return this string

  # left - part of integer we nedd to enter
  # write - part of integer we are entering now
  # write and lef... find out? :)
  left = number
  write = left / 100
  left = left - write * 100

  if write > 0
    return 'one hundred'
  end

  write = left / 10
  left = left - write * 10
  if write > 0
    if write == 1
      if left == 0
        num_string = num_string + 'ten'
      elsif left == 1
        num_string = num_string + 'eleven'
      elsif left == 2
        num_string = num_string + 'twelve'
      elsif left == 3
        num_string = num_string + 'thirteen'
      elsif left == 4
        num_string = num_string + 'fourteen'
      elsif left == 5
        num_string = num_string + 'fifteen'
      elsif left == 6
        num_string = num_string + 'sixteen'
      elsif left == 7
        num_string = num_string + 'seventeen'
      elsif left == 8
        num_string = num_string + 'eightteen'
      elsif left == 9
        num_string = num_string + 'nimeteen'
      end
      left = 0
    elsif write == 2
      num_string = num_string + 'twenty'
    elsif write == 3
      num_string = num_string + 'thirty'
    elsif write == 4
      num_string = num_string + 'forty'
    elsif write == 5
      num_string = num_string + 'fifty'
    elsif write == 6
      num_string = num_string + 'sixty'
    elsif write == 7
      num_string = num_string + 'seventy'
    elsif write == 8
      num_string = num_string + 'eighty'
    elsif write == 9
      num_string = num_string + 'ninety'
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    if write == 1
      num_string = num_string + 'one'
    elsif write == 2
      num_string = num_string + 'two'
    elsif write == 3
      num_string = num_string + 'three'
    elsif write == 4
      num_string = num_string + 'four'
    elsif write == 5
      num_string = num_string + 'five'
    elsif write == 6
      num_string = num_string + 'six'
    elsif write == 7
      num_string = num_string + 'seven'
    elsif write == 8
      num_string = num_string + 'eight'
    elsif write == 9
      num_string = num_string + 'nine'
    end
  end

  if num_string == ''
    return 'zero'
  end

  num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts

# Better code for englishNumber

def english_number(number)
  if number < 0
    return 'Please, enter non-negative integer'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = [
    'one', 'two', 'three', 'four', 'five', 'six',
    'seven', 'eigth', 'nine'
    ]
  tens_place = [
    'ten', 'twenty', 'thirty', 'forty', 'fifty',
    'sixty', 'seventy', 'eighty', 'ninety'
    ]
  teenagers = [
    'eleven', 'twelve', 'thirteen', 'fourteen', 
    'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen' 
    ]
  left = number

  write = left / 1000000
  left = left - write * 1000000
  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left / 1000
  left = left - write * 1000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left / 100
  left = left - write * 100
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left / 10
  left = left - write * 10
  if write > 0
    if (write == 1) && (left > 0)
      num_string = num_string + teenagers[left - 1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write - 1]
  end
  num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(101)
puts english_number(3211)
puts english_number(1323150)
puts english_number(1000000000000)
