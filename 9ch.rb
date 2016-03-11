a = Array.new + [12345]
b = String.new + 'hello'
c = Time.new
puts 'a = ' + a.to_s
puts 'b = ' + b.to_s
puts 'c = ' + c.to_s
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

color_array = []
color_hash = {}
color_array[0] = 'red'
color_array[1] = 'green'
color_array[2] = 'blue'
color_hash['strings'] = 'red'
color_hash['numbers'] = 'green'
color_hash['key words'] = 'blue'
color_array.each do |color|
  puts color
end
color_hash.each do |code_type, color|
  puts code_type + ':  ' + color
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
dice = [
  Die.new, Die.new
    ]

dice.each do |die|
  puts die.roll
end
puts


class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
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
    @stuff_in_belly = 10  # It`s` full
    @stuff_in_intestine = 0 # It doesn`t need to walk

    puts @name + ' was born.'
  end

  def feed
    puts 'You are feeding ' + @name + '(a).'
    @stuff_in_intestine = 0
    passage_of_time
  end

  def walk
    puts 'You are walking with ' + @name + '(a)'
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts 'You are putting '+ @name + '  (a) to bed.'
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
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
    passage_of_time
  end

  def rock
    puts 'You are gently swinging ' + @name + '(a)'
    @asleep = true
    puts 'Its fast dozing off... '
    passage_of_time
    if @asleep
      @asleep = true
      puts '...but wakeing up, when stopped swinging'
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts 'It`s waking up!'
      end
      puts @name + 'hungry! Taken to the extreme, eats YOU!'
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
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
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed

puts

# In process...Building OrangeTree program

class OrangeTree

  def initialize(tree)
    @tree = tree
    @height = 1
    @age = 0
    puts tree + ' has been planted'
  end

  def year_passes
    puts 'One year passed'
    @age += 1
    @height += 2
    puts @tree + ' is now ' + @age.to_s + ' year old'
  end

  def height
    puts 'A tree is slowly growing...'
    puts @tree + ' is now ' + @height.to_s + ' meters high'
  end

end
a = OrangeTree.new 'An orange tree'
a.year_passes
a.height
a.year_passes
a.height
a.year_passes
a.height
a.year_passes
a.height
