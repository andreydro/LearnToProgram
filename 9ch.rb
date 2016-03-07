a = Array.new + [12345]
b = String.new + 'hello'
c = Time.new
puts 'a = '+a.to_s
puts 'b = '+b.to_s
puts 'c = '+c.to_s
puts

time = Time.new
time2 = time + 60
puts time
puts time2
puts

puts Time.mktime(2000, 1, 1)
puts Time.mktime(1975, 8, 3, 10, 11)
puts

birth = Time.mktime(1992, 9, 23, 17, 45)
puts 'I was born: ' + birth.to_s
puts '1 billiard seconds after my birth will be in: ' + (birth + 1000000000).to_s
puts

# How old are you?
puts 'What year have you been born?'
year = gets.chomp
puts 'What month have you been born?'
month = gets.chomp
puts 'What day have you been born?'
day = gets.chomp
birth = Time.mktime(year, month, day)
puts 'Your birth date: ' + birth.to_s
howold = ((Time.new - birth)/31536000).to_i  #31536000 seconds in one year
puts 'You are ' + howold.to_s + ' years old.'

colorArray = []
colorHash = {}
colorArray[0] = 'red'
colorArray[1] = 'green'
colorArray[2] = 'blue'
colorHash['strings'] = 'red'
colorHash['numbers'] = 'green'
colorHash['key words'] = 'blue'
colorArray.each do |color|
  puts color
end
colorHash.each do |codeType, color|
  puts codeType + ':  ' + color
end
puts

class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'Fifty-eight'
    end

    english
  end
end

puts 5.to_eng
puts 58.to_eng
puts

class Die
  def roll
    1 + rand(6)
  end
end
dice = [Die.new, Die.new]

dice.each do |die|
  puts die.roll
end
puts


class Die
  def initialize
    roll
  end
  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end
end
die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
puts

# Dragon program

class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10  # It`s` full
    @stuffInIntestine = 0 # It doesn`t need to walk

    puts @name + ' was born.'
  end

  def feed
    puts 'You are feeding ' + @name + '(a).'
    @stuffInIntestine = 0
    passageOfTime
  end

  def walk
    puts 'You are walking with ' + @name + '(a)'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You are putting '+ @name + '  (a) to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + 'snoring, filling the room with smoke'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' waking up slowly'
    end
  end

  def toss
    puts 'You are tossing up ' + @name + '(a) in air'
    puts 'It`s giggling, burning out your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You are gently swinging ' + @name + '(a)'
    @asleep = true
    puts 'Its fast dozing off... '
    passageOfTime
    if @asleep
      @asleep = true
      puts '...but wakeing up, when stopped swinging'
    end
  end

  private

  def hungry?
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly = @stuffInBelly - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep
        @asleep = false
        puts 'It`s waking up!'
      end
      puts @name + 'hungry! Taken to the extreme, eats YOU!'
      exit
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Oooppss! ' + @name + 'did not good...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'It`s suddenly waking up!'
      end
      puts 'In belly of ' + @name + '(a) hums...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'it`s suddenly waking up!'
      end
      puts @name + ' jumps, because wants to the toilet...'
    end
  end

end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed

puts

# In process...Building OrangeTree program

class OrangeTree
  def initialize
    @age = 0
    @orange = "Orange tree"
    @dead = false
    @almostDead = 10

    puts @orange + ' started to grow'
  end

  def height   # Height of the tree
    puts @orange + ' is already ' + @age + ' meters height!'
    oneYearPasses
  end

  def oneYearPasses #Increase tree age each year
    @age += 1
  end

  def countTheOranges

  end

  def pickAnOrange

  end
end