toast = Proc.new do
  puts 'For your health!'
end

toast.call
toast.call
toast.call
puts

doYouLike = Proc.new do |aGoodThing|
  puts 'I really love '+aGoodThing+'!'
end
doYouLike.call 'Chocolade'
doYouLike.call 'Rubin'
puts

def doSelfImportantly someProc
  puts 'Everybody freeze! I need to do something...'
  someProc.call
  puts 'Attention everybody, i`ve done. Go on execute your deals`'
end
sayHello = Proc.new do
  puts 'hello'
end
sayGoodBye = Proc.new do
  puts 'goodBye'
end
doSelfImportantly sayHello
doSelfImportantly sayGoodBye
puts

# other program
def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end
def twiceDo someProc
  someProc.call
  someProc.call
end
wink = Proc.new do
  puts '<wink>'
end
glance = Proc.new do
  puts '<glance>'
end

maybeDo wink
maybeDo glance
twiceDo wink
twiceDo glance
puts

# other program
def doUntilFalse firstInput, someProc
  input = firstInput
  output = firstInput

  while output
    input = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop
    array.push lastNumber*lastNumber
    array.push lastNumber-1
  end
end
alwaysFalse = Proc.new do |justIgnoreMe|
  false
end
puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse('I am writing this at 3 A.M.; somebody cut me down!', alwaysFalse)
puts

#other program
def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end
squareIt = Proc.new do |x|
  x*x
end
doubleIt = Proc.new do |x|
  x + x
end
doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt
puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)
puts

# other program
class Array
  def eachEven (&wasABlock_nowAProc)
    isEven = true
    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)
    end
  end
end
['apples','rotten apples','cherry','durian'].eachEven do |fruit|
  puts 'Mmm! I like cakes with '+fruit+', do you?'
end

[1,2,3,4,5].eachEven do |oddBall|
  puts oddBall.to_s+' - odd number'
end
puts

#other program
def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock+':  '+duration.to_s+' sec.'
end
profile '25000 doubling' do
  number = 1

  25000.times do
    number = number + number
  end

  puts number.to_s.length.to_s+' numbers'
end
profile 'count till million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end
puts

# Grandfather watch
def Watch
  yield
end

Watch do
  duration = Time.now.strftime("%I")
  duration = duration.to_i
  duration.times {puts 'Boom!'}
end
puts

#other program
def log someBlock
  puts 'Execution of block ' + someBlock.to_s + ' has started'
  someBlock.call
  puts 'Execution of block '+ someBlock.to_s + ' has finished'
end
smallBlock = Proc.new do
  puts 'Other block'
end

bigBlock = Proc.new do
  log smallBlock
end


log bigBlock