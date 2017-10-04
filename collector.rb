require_relative 'multilinguist'

class Collector < Multilinguist

  def initialize
    super
    @wisdom = []
    @friendship = []
  end

  def wisdom_quotes
    @wisdom
  end

  def friendship_quotes
    @friendship
  end

  # INSTANCE METHODS
  def add_quote(string, topic)
    if topic == "wisdom"
      @wisdom << string
    elsif topic == "friendship"
      @friendship << string
    end
  end

  def random_quote(topic)

    if topic == "wisdom"
      message = @wisdom.sample
    elsif topic == "friendship"
      message = @friendship.sample
    end

    self.say_in_local_language(message)
  end


end

martin = Collector.new

martin.add_quote("Today is a gift, that's why is called the present", "wisdom")
martin.add_quote("wisom message quote number 2", "wisdom")
martin.add_quote("wisom message quote number 3", "wisdom")

martin.add_quote("You got nothing to fear, you are among friends", "friendship")
martin.add_quote("FRIENDSHIP message quote number 2", "friendship")
martin.add_quote("FRIENDSHIP message quote number 3", "friendship")
martin.add_quote("FRIENDSHIP message quote number 4", "friendship")

# p martin.wisdom_quotes
# p martin.friendship_quotes
# puts"random quoteS"
# p martin.random_quote("friendship")
p martin.random_quote("wisdom")

martin.travel_to("Colombia")

p martin.random_quote("friendship")
