class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :genre
      t.boolean :liked, :default => false
      t.integer :user_id, null:false, foreign_key: true
    end
  end
end
