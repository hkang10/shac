class Message < ActiveRecord::Base
belongs_to :sender, foreign_key: "author_id"
belongs_to :recipient, foreign_key: "recipient_id"

end
