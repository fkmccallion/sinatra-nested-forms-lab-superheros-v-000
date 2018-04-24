require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params)
      @members = Hero.create_with_hash(params)
      binding.pry
      erb :team
    end



end
