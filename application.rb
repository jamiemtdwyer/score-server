require "sinatra"
require "sinatra/activerecord"
require "./models/score.rb"
set :database_file, "config/database.yml"

get '/scores' do
  content_type :json

  Score.all.order(score: :desc).limit(25).to_json
end

get '/scores/:id' do
  content_type :json

  score = Score.find(params[:id])
  halt 404 unless score

  score.to_json
end