class AddCategoriesToPosts < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name 
    end

    add_column :categorizations, :category_id, :integer
    add_column :categorizations, :post_id, :integer
  end
end