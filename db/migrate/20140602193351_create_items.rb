class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :body
      t.string :name
      t.string :link
      t.integer :user_id, null: false
      t.integer :parent_id

      t.timestamps
    end
  end
end
