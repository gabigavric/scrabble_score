require 'scrabble_score'

describe("#Word")do
  it('returns a scrabble score for a letter') do
    word = Word.new("d")
    expect(word.scrabble_score()) .to(eq(2))
  end

  it('returns a reversed and upcased word') do
    word = Word.new("dogs")
    expect(word.scrabble()) .to(eq("SGOD"))
  end
end