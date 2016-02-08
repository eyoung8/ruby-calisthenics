module FunWithStrings
  def palindrome?
    sanitized = self.downcase.gsub(/\W/,'')
    return sanitized == sanitized.reverse
  end
  
  def count_words
    sanitized = self.downcase.gsub(/\W/,' ')
    word_count_hash = Hash.new
    sanitized.split.each do |word|
      word_count_hash[word] ||= 0
      word_count_hash[word] += 1
    end
    return word_count_hash
  end
  
  def sort
    return self.split("").sort.join
  end
  
  def anagram_groups
    sanitized = self.downcase.gsub(/\W/,' ')
    anagram_groups_hash = Hash.new
    sanitized.split.each do |word|
      sorted_word = word.sort
      anagram_groups_hash[sorted_word] ||= Array.new
      anagram_groups_hash[sorted_word] << word
    end
    return anagram_groups_hash.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
