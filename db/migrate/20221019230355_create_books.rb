class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :genre
      t.boolean :liked, :default => false
      t.index ["user_id"], name: "index_todos_on_user_id"
    end
  end
end
