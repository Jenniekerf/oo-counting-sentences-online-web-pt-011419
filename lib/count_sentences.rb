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
    counted = []
    counted << self.split(/[.?!]/).reject { |c| c.empty? }
    counted.count
  end
end