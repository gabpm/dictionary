require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/word")


get("/") do
  @terms = Word.all()
  erb(:index)
end
