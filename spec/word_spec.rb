require("rspec")
require("word")


describe(Word) do
 describe("#name") do
   it("makes a new word") do
     test_word = Word.new({:name => "repository"})
     expect(test_word.name()).to(eq("repository"))
    end
  end

  describe("#save") do
    it("saves a new word") do
      test_word = Word.new({:name => "repository"})
      test_word.save
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it("empties all words") do
      test_word = Word.new({:name => "repository"})
      test_word.save
      Word.clear
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns a word's ID") do
      test_word = Word.new({:name => "repository"})
      test_word.save
      expect(test_word.id()).to(eq(1))
    end
  end
end
