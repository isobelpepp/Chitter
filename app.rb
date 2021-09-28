require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/peep'

class Chitter < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @peeps = Peep.all
    @user = session[:user]
    erb :index
  end

  get '/peep/create' do
    erb :'peep/create'
  end

  post '/peep/create' do
    Peep.create(content: params[:peep])
    redirect '/'
  end

  get '/user/create' do
    erb :'user/create'
  end

  post '/user/create' do
    session[:user] = params[:username]
    redirect '/'
  end

  run! if app_file == $0
end
