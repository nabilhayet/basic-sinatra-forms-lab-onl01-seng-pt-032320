require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name_     = params[:team_name]
    @coach_         = params[:coach]
    @point_guard_   = params[:point]
    @sho_guard_     = params[:sguard]
    @sm_forward_    = params[:smforward]
    @power_forward_ = params[:powforward]
    @center_        = params[:center]

    erb :team
  end


end
