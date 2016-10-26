class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :school
      t.string :email
      t.string :password_digest
      t.integer :payment_id
      t.string :address
      t.boolean :host, null: false
      t.string :photo_url

      t.timestamps(null: false)
    end
  end
end
