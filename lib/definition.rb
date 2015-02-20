class Definition
  attr_reader(:name)

  @@Definitions = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = @@Definitions.length().+(1)
  end

  define_singleton_method(:all) do
    @@Definitions
  end
  define_method(:save) do
    @@Definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@Definitions = []
  end

  define_singleton_method(:find) do |id|
    found_def = nil
    @@Definitions.each() do |definition|
      if definition.id == id
        found_def = definition
      end
    end
    found_def
  end

  define_method(:id) do
    @id
  end
end
