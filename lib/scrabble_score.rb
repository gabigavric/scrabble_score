class Word
  def initialize (str)
    @word = str.downcase()
    @scores = {"a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "a" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1, 
               "d" => 2, "g" => 2, 
               "b" => 3, "c" => 3, "m" => 3, "p" => 3,
               "f" => 4, "h" => 4, "v" => 4, "w" => 4, "y" => 4, 
               "k" => 5,
               "j" => 8, "x" => 8,
               "q" => 10, "z" => 10
              }
  end

  def scrabble_score()
    score = 0
    @word.each_char { |letter|
      score += @scores.fetch(letter)
    }
    return score #does it have to have keyword return? I think so
  end
end

#I like the way this person did it, I didn't use a hash initially (if statement),
#but I agree, Hash is cleaer


#https://github.com/drewjparker91/scrabbleScore/blob/master/lib/scrabbleScore.rb