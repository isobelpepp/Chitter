require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/peep'

class Chitter < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @peeps = Peep.all
    erb :index
  end

  get '/create_peep' do
    erb :create_peep
  end

  post '/create_peep' do
    Peep.create(content: params[:peep])
    redirect '/'
  end

  run! if app_file == $0
end
