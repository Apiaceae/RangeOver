# config/initializers/geocoder.rb
Geocoder.configure(

  # geocoding service request timeout, in seconds (default 3):
  :timeout => 5,

  # set default units to kilometers:
  :units => :km,

   # caching (see below for details):
  # :cache => Redis.new,
  # :cache_prefix => "..."
  :cache => Rails.cache,

  # :baidu => {
    # to use an API key:
    # :api_key => "xzV5oGMs9k1Ew9G4pu8ealIP"
  # },

  # geocoding service (see below for supported options):
  # :lookup => :baidu,

  # How to add a proxy server to Ruby Geocoder
  # http://blog.quotaguard.com/adding-proxy-server-ruby-geocoder/
  # :http_proxy => 'http://quotaguard.com:9292',
  # :timeout => 5

)
