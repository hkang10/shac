class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :author_id
      t.integer :recipient_id

      t.timestamps(null: false)
    end
  end
end
