

def method(&block)
  puts '-----' 
  block.call if block  
  puts '-----' 
end


method do
  puts 'Hello'
end

method
