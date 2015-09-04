require 'sinatra'
require 'rss'
require 'sinatra/reloader'

set :public_folder, File.dirname(__FILE__) + '/static'

get '/' do
	@rss = RSS::Parser.parse("http://b.hatena.ne.jp/hotentry.rss")
	erb :index
	
end