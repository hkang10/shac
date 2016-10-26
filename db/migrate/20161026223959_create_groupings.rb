class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.integer :group_id
      t.integer :member_id

      t.timestamps(null: false)
    end
  end
end
