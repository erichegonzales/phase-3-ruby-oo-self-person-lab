class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = num.clamp(0, 10)
  end

  def hygiene=(num)
    @hygiene = num.clamp(0, 10)
  end

  def clean?
    return true if @hygiene > 7
    false
  end

  def happy?
    return true if @happiness > 7
    false
  end

  def get_paid(amount)
    self.bank_account += amount
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

#   def start_conversation(friend, topic)
#     case topic
#     when "politics"
#       [self, friend].each { |person| person.happiness -= 2 }
#       "blah blah partisan blah lobbyist"
#     when "weather"
#       [self, friend].each { |person| person.happiness += 1 }
#       "blah blah sun blah rain"
#     else
#       "blah blah blah blah blah"
#     end
#   end
end
