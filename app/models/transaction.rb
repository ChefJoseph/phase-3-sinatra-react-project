class Transaction < ActiveRecord::Base
    belongs_to :sender, :class_name => 'User'
    belongs_to :receiver, :class_name => 'User'
    belongs_to :user

    def people_involved
      return {sender: sender, receiver: receiver}
    end
    
end