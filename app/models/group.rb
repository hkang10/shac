class Group < ActiveRecord::Base
  belongs_to :admin, class_name: "User"
  has_many :groupings
  has_many :members, through: :groupings

end
