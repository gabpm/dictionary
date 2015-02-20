require("rspec")
require("definition")


describe(Definition) do
  describe("#name") do
    it("makes a new word") do
      test_def = Definition.new({:name => "a central location in which data is stored and managed."})
      expect(test_def.name()).to(eq("a central location in which data is stored and managed."))
    end
  end

  describe("#save") do
    it("saves a new word") do
      test_def = Definition.new({:name => "a central location in which data is stored and managed."})
      test_def.save
      expect(Definition.all()).to(eq([test_def]))
    end
  end

  describe(".clear") do
    it("empties all words") do
      test_def = Definition.new({:name => "a central location in which data is stored and managed."})
      test_def.save
      Definition.clear
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns a word's ID") do
      test_def = Definition.new({:name => "a central location in which data is stored and managed."})
      test_def.save
      expect(test_def.id()).to(eq(1))
    end
  end
end
