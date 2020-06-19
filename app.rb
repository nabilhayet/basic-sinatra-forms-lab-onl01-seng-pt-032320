require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name_     = params[:name]
    @coach_         = params[:coach]
    @point_guard_   = params[:pg]
    @sho_guard_     = params[:sg]
    @sm_forward_    = params[:sf]
    @power_forward_ = params[:pf]
    @center_        = params[:c]

    erb :team
  end


end
