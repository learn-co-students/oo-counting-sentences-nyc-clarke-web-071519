require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(" ").select do |sentence|
      sentence.sentence? || sentence.question? || sentence.exclamation?
    end
    sentences.length
  end
end