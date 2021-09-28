require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require_relative 'lib/peep'

class Chitter < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
    register Sinatra::Flash
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

  post '/user/sign_out' do
    session.clear
    flash[:notice] = 'You have successfully signed out.'
    redirect '/'
  end

  run! if app_file == $0
end
