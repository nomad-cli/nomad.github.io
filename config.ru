require 'bundler'
Bundler.require

use Rack::Static, urls: ["/css", "/images", "/js", "/fonts", "favicon.ico"], root: "public"
use Rack::Typekit, kit: ENV['TYPEKIT_KIT_ID'] if ENV['TYPEKIT_KIT_ID']

class Web < Sinatra::Base
  get '/' do
    haml :index
  end
end

run Web
