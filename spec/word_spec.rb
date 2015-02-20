require("rspec")
require("word")


describe(Word) do
 describe("#name") do
   it("makes a new word") do
     test_word = Word.new({:name => "repository"})
     expect(test_word.name()).to(eq("repository"))
    end
  end
end
