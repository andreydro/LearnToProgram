toast = Proc.new do
  puts 'For your health!'
end

toast.call
toast.call
toast.call
puts

do_you_like = Proc.new do |a_good_thing|
  puts 'I really love '+a_good_thing+'!'
end
do_you_like.call 'Chocolade'
do_you_like.call 'Rubin'
puts

def do_self_importantly some_proc
  puts 'Everybody freeze! I need to do something...'
  some_proc.call
  puts 'Attention everybody, I`ve done. Go on execute your deals`'
end
say_hello = Proc.new do
  puts 'Hello'
end
say_good_bye = Proc.new do
  puts 'GoodBye'
end
do_self_importantly say_hello
do_self_importantly say_good_bye
puts

# other program
def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do some_proc
  some_proc.call
  some_proc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybe_do wink
maybe_do glance
twice_do wink
twice_do glance
puts

# other program
def do_until_false first_input, some_proc
  input = first_input
  output = first_input

  while output
    input = output
    output = some_proc.call input
  end

  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    array.pop
    array.push last_number * last_number
    array.push last_number - 1
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares).inspect
puts do_until_false('I am writing this at 3 A.M.; somebody cut me down!', always_false)
puts

#other program
def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

square_it = Proc.new do |x|
  x*x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose double_it, square_it
square_then_double = compose square_it, double_it
puts double_then_square.call(5)
puts square_then_double.call(5)
puts

# other program
class Array

  def each_even (&was_a_block_now_a_proc)
    is_even = true
    self.each do |object|
      if is_even
        was_a_block_now_a_proc.call object
      end

      is_even = (not is_even)
    end
  end

end
['apples', 'rotten apples', 'cherry', 'durian'].each_even do |fruit|
  puts 'Mmm! I like cakes with ' + fruit + ', do you?'
end

[1, 2, 3, 4, 5].each_even do |odd_ball|
  puts odd_ball.to_s + ' - odd number'
end

puts

#other program
def profile(description_of_block, &block)
  start_time = Time.now

  block.call

  duration = Time.now - start_time

  puts description_of_block+':  ' + duration.to_s + ' sec.'
end

profile '25000 doubling' do
  number = 1

  25000.times do
    number = number + number
  end

  puts number.to_s.length.to_s + ' numbers'
end

profile 'count till million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end

puts

# Grandfather watch
def watch
  yield
end

watch do
  duration = Time.now.strftime("%I")
  duration = duration.to_i
  duration.times {puts 'Boom!'}
end

puts

#other program
def log(some_block)
  puts 'Execution of block ' + some_block.to_s + ' has started'
  some_block.call
  puts 'Execution of block '+ some_block.to_s + ' has finished'
end

small_block = Proc.new do
  puts 'Other block'
end

big_block = Proc.new do
  log small_block
end


log big_block
