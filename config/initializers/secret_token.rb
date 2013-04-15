# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

# heroku config:set COOKIE_TOKEN=`rake secret`
# Read token from environment var to play nice with Heroku.
if Rails.env.production?
  token = ENV['COOKIE_TOKEN']
else
  token = 'ab619bf90f0cde43cae5788a54be2af3c0357eb39fd18486b7c124dcc682979a677c78d98b77c8453f3b294c583b0c24b5bd7bc2384808973c1dc763e6975d40'
end

MersWeb::Application.config.secret_token = token
