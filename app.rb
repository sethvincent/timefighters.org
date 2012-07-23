require 'rubygems'
require 'sinatra/base'

class App < Sinatra::Base
  
  get '/' do
    File.read(File.join('public', 'index.html'))
  end
  
  get '/:page' do
    if File.exists?('views/'+params[:page]+'.erb')
      erb params[:page].to_sym
    else 
      erb :fourohfour
    end   
  end
  
end