require "sinatra"
require "sinatra/activerecord"
require "./models/score.rb"
set :database_file, "config/database.yml"

before do '/*'
  auth_header = request.env["HTTP_X_API_KEY"]
  halt 401 unless auth_header && Rack::Utils.secure_compare(auth_header, ENV["API_KEY"])
end

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

post '/scores' do
  content_type :json

  request.body.rewind
  payload = JSON.parse(request.body.read)
  score_params = payload["score"]

  score = Score.new(score_params)

  unless score.save
    status 422
    return score.errors.to_json
  end

  score.to_json
end