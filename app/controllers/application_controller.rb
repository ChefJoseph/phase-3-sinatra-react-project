class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  

  get "/friendships" do
{message: "Hello to my friendships!"}.to_json
  end

  get "/users" do
    users_elmo = User.all
    users_elmo.to_json
  end
  get "/users/1" do
    users_elmo = User.first
    users_elmo.to_json
  end

  post "/users" do
    create_users = User.create(params)
    create_users.to_json
  end

  get "/transactions" do
    transactions_all = Transaction.all.order(id: :desc)

    transactions_all.to_json(:include => [:receiver, :sender])
  end


  post "/transactions" do
    create_transactions = Transaction.create(params)
    create_transactions.to_json
  end
 
  get "/transaction_sender" do
    transaction_sender = Transaction.third.sender
    transaction_sender.to_json
  end

  get "/transaction_receiver" do
    transaction_receiver = Transaction.first.receiver 
    transaction_receiver.to_json
  end

  # patch "/transactions/:id" do
    
  #     add_comments = Transaction.find(params[:id])
  #     add_comments.update(
  #       comments: params[:comments]
  #       )
  #     add_comments.to_json
  # end

  patch "/transactions/:id" do
    find_trans = Transaction.find(params[:id])
    find_trans.update(params)
    find_trans.to_json
  end

  delete "/transactions/:id" do
      found_transaction = Transaction.find(params[:id])
      found_transaction.destroy
  end

end