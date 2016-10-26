class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :admin_id
      t.string :name
      t.string :description

      t.timestamps(null: false)
    end
  end
end
