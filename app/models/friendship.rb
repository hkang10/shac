class Friendship < ActiveRecord::Base
  belongs_to :initiated_friend, class_name: "User"
  belongs_to :received_friend, class_name: "User",, foreign_key: :friend_id

end
