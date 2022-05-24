require 'scrabble_score'

describe("#Word")do
  it('returns a scrabble score for a letter') do
    word = Word.new("d")
    expect(word.scrabble_score()) .to(eq(2))
  end
end