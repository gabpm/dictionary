require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/word")
require("./lib/definition")


get("/") do
  @terms = Word.all()
  erb(:index)
end

post("/words") do
  name = params.fetch("name")
  Word.new({:name => name}).save()
  @terms = Word.all()
  erb(:index)
end

post("/words") do
  name = params.fetch("name")
  Word.new({:name => name}).save()
  @terms = Word.all()
  erb(:index)
end

# post("/definitions") do
#   name = params.fetch("name")
#   Definitions.new({:name => name}).save()
#   @definitions = Definitions.all()
#   erb(:definition)
#
# end
#
# get('/words/:id') do
#   @word = Word.find(params.fetch('id').to_i())
#   erb(:words)
# end
#
# get('/definitions/:id') do
#   @def = Definition.find(params.fetch('id').to_i())
#   erb(:definitions)
# end
