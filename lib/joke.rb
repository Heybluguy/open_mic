class Joke
  attr_accessor :id,
                :question,
                :answer

  def initialize(material = {})
    @id = material[:id]
    @question = material[:question]
    @answer = material[:answer]
  end
end
