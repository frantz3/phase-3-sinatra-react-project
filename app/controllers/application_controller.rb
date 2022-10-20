class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all

    users.to_json
  end

  post '/users' do
    user = User.create(params)
    user.to_json
  end



end
