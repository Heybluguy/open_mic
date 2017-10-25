class User
  attr_reader :name,
              :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(comedian, joke)
    comedian.jokes << joke
  end

  def count
    @jokes.length
  end

  def perform_routine_for(comedian)
    comedian.jokes << jokes
    comedian.jokes.flatten!
  end

  def learn_routine(csv)
    csv = File.open("jokes.csv", "r")
    csv_read = csv.readlines
    csv.close
    @jokes << csv_read
    @jokes = @jokes.flatten.drop(1)
  end
end
