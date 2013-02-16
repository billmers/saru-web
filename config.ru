# This file is used by Rack-based servers to start the application.

use Rack::ReverseProxy do
  reverse_proxy_options :preserve_host => true
  reverse_proxy /^\/pub(\/.*)$/, 'http://dl.dropbox.com/u/8507541$1'
end

require ::File.expand_path('../config/environment',  __FILE__)
run MersWeb::Application
