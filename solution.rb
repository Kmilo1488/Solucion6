require 'sinatra'

  set :session_secret, 'session'
  enable :sessions

  get '/' do
    @count = session[:counts]
    erb:main
  end

  post '/' do
    erb:count
    redirect '/'
  end

  get '/reset' do
    session.clear
    redirect '/'
  end
