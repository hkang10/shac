class CreateCrashings < ActiveRecord::Migration
  def change
    create_table :crashings do |t|
      t.integer :host_id
      t.integer :guest_id
      t.string :message
      t.datetime :stay_date
      t.string :exchange

      t.timestamps(null: false)
    end
  end
end
