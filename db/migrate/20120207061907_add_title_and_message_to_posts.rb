class AddTitleAndMessageToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :title, :string
    add_column :posts, :message, :text

    drop_table :blogs
  end
end
