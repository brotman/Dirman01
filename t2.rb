# T2.rb


puts 'starting...'

class Dialog1
   def initialize
     @answer ="---"
   end
   def ask(prompt)
     puts prompt
     @answer= gets
     puts @answer
   end
=begin
end
def ask0(prompt)
  puts "about to ask -- in ask0"
  puts prompt
  gets @answer
  puts "answer= #@answer}"
  #  return @answer
end

def ask1(prompt)
  puts "about to ask -- in ask1"
  puts prompt
  @answer = gets @answer
  puts @answer
  @answer.chop!
  puts @answer
  puts "answer= #@answer}"
  #  return @answer
end
=end


def ask(prompt)
  puts prompt
  @answer= gets
end

end


def up
  puts "UP"
end

def down
  puts "dOWN"
end

def all
  puts "all"
end

def huh
  puts "hUH??"
end #huh

@answer = ask("action?")
    case @answer
      when "u"
        up
      when "d"
        down
      when "a"
        all
      else
        huh
    end

# end
d= Dialog1.new
a = d.ask