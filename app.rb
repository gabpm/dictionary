require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/word")


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
