class Word
  attr_reader(:name)

  @@words = []

 define_method(:initialize) do |attributes|
   @name = attributes.fetch(:name)
   @id = @@words.length().+(1)
 end
end
