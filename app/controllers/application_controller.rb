class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  

  get "/friendships" do
{message: "Hello to my friendships!"}.to_json
  end

  get "/users" do
    {message: "Hello to my users!"}.to_json
  end

  get "/transactions" do
    {message: "Hello to my transactions!"}.to_json
    transactions_all = Transaction.all 
    transactions_all.to_json
  end

end