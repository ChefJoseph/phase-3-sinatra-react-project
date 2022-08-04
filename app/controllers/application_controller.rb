class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  

  get "/friendships" do
{message: "Hello to my friendships!"}.to_json
  end

  get "/users" do
    users_elmo = User.first
    users_elmo.to_json
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

  patch "transaction/:id" do
    find_trans = Transaction.find(params[:id])
    find_trans.update(params)
  end

  delete "/transactions/:id" do
    begin 
      found_transaction = Transaction.find(params[:id])
      if found_transaction.comments
        found_transaction.delete
      else
      {message:"No comment here"}.to_json
      end
    rescue
    {error:"Couldn't find transaction"}.to_json
    end
  end

end