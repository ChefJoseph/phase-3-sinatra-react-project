class Transaction < ActiveRecord::Base
    belongs_to :sender, :class_name => 'User'
    belongs_to :receiver, :class_name => 'User'
    belongs_to :user

    def people_involved
      return {sender: sender, receiver: receiver}
      
    end
    
    def sender_name
      trans_id = self.find(self.id)
      trans_id.sender.name
    end
end