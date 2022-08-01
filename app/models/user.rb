class User < ActiveRecord::Base
    has_many :transactions
    has_many :friendships


    

end