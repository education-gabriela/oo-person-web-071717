class Person
  @@all_names = []
  @@topics = {
    "politics" => "blah blah partisan blah lobbyist",
    "weather" => "blah blah sun blah rain"
  }

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

    @@all_names << name
  end

  def happiness=(points)
    if points >= 10
      @happiness = 10
    elsif points < 0
      @happiness = 0
    else
      @happiness = points
    end
  end

  def hygiene=(points)
    if points >= 10
      @hygiene = 10
    elsif points < 0
      @hygiene = 0
    else
      @hygiene = points
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary

    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4

    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2

    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3

    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
      when "politics"
        person.happiness = person.happiness - 2
        self.happiness = self.happiness - 2
      when "weather"
        person.happiness = person.happiness + 1
        self.happiness = self.happiness + 1
      else
        return "blah blah blah blah blah"
    end

    @@topics[topic]
  end
end
