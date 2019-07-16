require 'pry'

class String

  def sentence?
    if self[self.length-1] == "."
      return true
    else
      return false 
    end 
    
  end

  def question?
    if self[self.length-1] == "?"
      return true
    else
      return false 
    end 
  end

  def exclamation?
    if self[self.length-1] == "!"
      return true
    else
      return false 
    end 
  end

  def count_sentences
    new_arr = self.split(" ")
    count = 0
    new_arr.each do |single_string|
      if single_string.sentence? || single_string.question? || single_string.exclamation?
        count += 1
      end 
    end 
    if count == 0 
      return 0
    else 
      return count
    end 
  end
end