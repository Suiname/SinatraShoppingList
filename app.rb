require "bundler"
Bundler.require

# get '/' do
#   return {:hello => 'hello, world'}.to_json
# end

get '/' do
  erb :hello
end

get '/worlds' do
  erb :world
end

get '/submit' do
  erb :submit
end

post '/submit_form' do
  p params
  return params.to_json
end

get '/main' do
  erb :main
end

get '/stuff' do
  erb :stuff
end

get '/happy' do
  happy_things = Dictionary.new({
    :theworld => 'is awesome'
    })
    return happy_things.to_json
end
