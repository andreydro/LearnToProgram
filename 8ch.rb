puts 'Hello! And thx, that you found time'
puts 'to help me in that research. my research'
puts 'conected with styding with thing, how people tret'
puts 'Mexican food. Just think about Mexican food'
puts 'and try answer honestly on all questions,'
puts 'using words yes or no. My research'
puts 'doesn`t conected with bed-wetting.'
puts
# We ask this questions, but ignore answers
goodAnswer = false
while (not goodAnswer)
  puts 'Do you like tacos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
  else
    puts 'Please, answer yes or no.'
  end
end
goodAnswer = false
while (not goodAnswer)
  puts 'Do you like burrito?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
  else
    puts 'Please, answer yes or no.'
  end
end
#We pay attention on this question
goodAnswer = false
while (not goodAnswer)
  puts 'Do you wet the bed?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
    if answer == 'yes'
      wetsBed = true
    else
      wetsBed = false
    end
  else
    puts 'Please, answer yes ot no.'
  end
end
goodAnswer = false
while (not goodAnswer)
  puts 'Do you like chimichanga?'
  answer gets.chomp.downcase
  if (answer == 'yes' or answer =='no')
    goodAnswer = true
  else
    puts 'Please, answer yes or no'
  end
end
puts 'And a few more questions...'
goodAnswer = false
while (not goodAnswer)
  puts 'Do you like sopapilas?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
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
puts wetsBed
puts

def sayMoo
  puts 'moooooooo.....'
end
sayMoo
sayMoo
puts 'cuan-cuan'
sayMoo
sayMoo
puts

def sayMoo numberOfMoos
  puts 'mooooo....'*numberOfMoos
end
sayMoo 3
puts 'hru-hru'
puts

def doubleThis num
  numTimes2 = num*2
  puts num.to_s+' two time will be '+numTimes2.to_s
end
doubleThis 44
puts

def littlePest var
  var = nil
  puts 'Ha-ha! I destroyed your variable!'
end
var = 'You can`t touch my variable!'
littlePest var
puts var

puts

returnVal = puts 'It was returned by puts method:'
puts returnVal
puts

def sayMoo numberOfMoos
  puts 'mooooo....'*numberOfMoos
  'yellow submarine'
end
x = sayMoo 2
puts x
puts

# Better version of question program
def ask question
  goodAnswer = false
  while (not goodAnswer)
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' or reply == 'no')
      goodAnswer = true
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
wetsBed = ask 'Do you wet the bed?'
ask 'Do you like chimichanga?'
ask 'Do you like sopapilas?'
ask 'Do you like tamales?'
puts 'And a few more questions...'
ask 'Do you like horchata?'
ask 'Do you like flautas?'
puts
puts wetsBed
puts

def englishNumber number
  #We need numbers only from 0 till 100
  if number < 0
    return 'Please, enter number 0 or bigger'
  end
  if number > 100
    return 'Please, enter number 100 or less'
  end

  numString = '' #We will return this string

  # left - part of integer we nedd to enter
  # write - part of integer we are entering now
  # write and lef... find out? :)
  left = number
  write = left/100
  left = left - write*100

  if write > 0
    return 'one hundred'
  end

  write = left/10
  left = left - write*10
  if write > 0
    if write == 1
      if left == 0
        numString = numString + 'ten'
      elsif left == 1
        numString = numString + 'eleven'
      elsif left == 2
        numString = numString + 'twelve'
      elsif left == 3
        numString = numString + 'thirteen'
      elsif left == 4
        numString = numString + 'fourteen'
      elsif left == 5
        numString = numString + 'fifteen'
      elsif left == 6
        numString = numString + 'sixteen'
      elsif left == 7
        numString = numString + 'seventeen'
      elsif left == 8
        numString = numString + 'eightteen'
      elsif left == 9
        numString = numString + 'nimeteen'
      end
      left = 0
    elsif write == 2
      numString = numString + 'twenty'
    elsif write == 3
      numString = numString + 'thirty'
    elsif write == 4
      numString = numString + 'forty'
    elsif write == 5
      numString = numString + 'fifty'
    elsif write == 6
      numString = numString + 'sixty'
    elsif write == 7
      numString = numString + 'seventy'
    elsif write == 8
      numString = numString + 'eighty'
    elsif write == 9
      numString = numString + 'ninety'
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    if write == 1
      numString = numString + 'one'
    elsif write == 2
      numString = numString + 'two'
    elsif write == 3
      numString = numString + 'three'
    elsif write == 4
      numString = numString + 'four'
    elsif write == 5
      numString = numString + 'five'
    elsif write == 6
      numString = numString + 'six'
    elsif write == 7
      numString = numString + 'seven'
    elsif write == 8
      numString = numString + 'eight'
    elsif write == 9
      numString = numString + 'nine'
    end
  end

  if numString == ''
    return 'zero'
  end

  numString
end

puts englishNumber(0)
puts englishNumber(9)
puts englishNumber(17)
puts englishNumber(32)
puts englishNumber(88)
puts

# Better code for englishNumber

def englishNumber number
  if number < 0
    return 'Please, enter non-negative integer'
  end
  if number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one','two','three','four','five','six','seven','eigth','nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve','thirteen','fourteen', 'fifteen','sixteen','seventeen','eighteen','nineteen' ]
  left = number

  write = left/1000000
  left = left - write*1000000
  if write > 0
    millions = englishNumber write
    numString = numString + millions + ' million'
    if left > 0
      numString = numString + ' and '
    end
  end

  write = left/1000
  left = left - write*1000
  if write > 0
    thousands = englishNumber write
    numString = numString + thousands + ' thousand'
    if left > 0
      numString = numString + ' and '
    end
  end

  write = left/100
  left = left - write*100
  if write > 0
    hundreds = englishNumber write
    numString = numString + hundreds + ' hundred'
    if left > 0
      numString = numString + ' and '
    end
  end

  write = left/10
  left = left - write*10
  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left - 1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end
    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end
  numString
end

puts englishNumber(0)
puts englishNumber(9)
puts englishNumber(11)
puts englishNumber(17)
puts englishNumber(32)
puts englishNumber(88)
puts englishNumber(101)
puts englishNumber(3211)
puts englishNumber(1323150)
puts englishNumber(1000000000000)