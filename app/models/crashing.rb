class Crashing < ActiveRecord::Base
  belongs_to :host, foreign_key: :host_id
  belongs_to :guest, foreign_key: :guest_id

end
