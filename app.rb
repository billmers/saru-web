require "bundler/setup"
require "sinatra/base"

class DrunkMonkeys < Sinatra::Base
  set :public_dir, "drunkmonkeys"
  get "/" do
    send_file File.expand_path("index.html", "drunkmonkeys")
  end
end

class MersMe < Sinatra::Base
  set :public_dir, "mersme"
  get "/" do
    send_file File.expand_path("index.html", "mersme")
  end
end

class Sarusama < Sinatra::Base
  set :public_dir, "sarusama"
  get "/" do
    send_file File.expand_path("index.html", "sarusama")
  end
end
