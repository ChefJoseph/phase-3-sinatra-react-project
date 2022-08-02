class User < ActiveRecord::Base
    
    belongs_to :transactions
    has_many :transactions

    def all_trans
     
    end
end