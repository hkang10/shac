class User < ActiveRecord::Base
has_many :groupings, foreign_key: :member_id
has_many :groups, through: :groupings
has_many :created_groups, class_name: "Group", foreign_key: :admin_id

has_many :hostings, class_name: "Crashing", foreign_key: :host_id
has_many :crashings, foreign_key: :guest_id
has_many :guests, through: :hostings
has_many :hosts, through: :crashings

has_many :friends
has_many :messages

end
