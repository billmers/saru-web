require './app'

# development
map 'http://dm.lvh.me/' do
  run DrunkMonkeys
end

map 'http://mm.lvh.me/' do
  run MersMe
end

map 'http://ss.lvh.me/' do
  run Sarusama
end

# production
map 'http://www.drunkmonkeys.com/' do
  run DrunkMonkeys
end

map 'http://www.mers.me/' do
  run MersMe
end

map 'http://www.sarusama.com/' do
  run Sarusama
end
