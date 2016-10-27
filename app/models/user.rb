class User < ActiveRecord::Base
  has_many :groupings, foreign_key: :member_id
  has_many :groups, through: :groupings
  has_many :created_groups, class_name: "Group", foreign_key: :admin_id

  has_many :hostings, class_name: "Crashing", foreign_key: :host_id
  has_many :crashings, foreign_key: :guest_id
  has_many :guests, through: :hostings, source: :host
  has_many :hosts, through: :crashings, source: :guest

  has_many :initiated_friendships, class_name: "Friendship"
  has_many :received_friendships, class_name: "Friendship", foreign_key: :friend_id
  has_many :messages

  # def friends
  #   self.initiated_friendships.received_friend +
  #   self.received_friendships.initiated_friend
  # end

end
