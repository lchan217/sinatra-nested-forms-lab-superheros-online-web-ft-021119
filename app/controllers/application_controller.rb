require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do
    erb :super_hero
  end
  post '/team' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]

    @hero1_name = params[:team][:members][0][:name]
    @hero1_power = params[:team][:members][0][:power]
    @hero1_biography = params[:team][:members][0][:biography]

    @hero2_name = params[:team][:members][1][:name]
    @hero2_power = params[:team][:members][1][:power]
    @hero2_biography = params[:team][:members][1][:biography]

    @hero3_name = params[:team][:members][2][:name]
    @hero3_power = params[:team][:members][2][:power]
    @hero3_biography = params[:team][:members][2][:biography]

    erb :team
  end
end
