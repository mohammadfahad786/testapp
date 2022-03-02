class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :string
      t.text :content
      t.string :category_id
      t.string :integer

      t.timestamps
    end
  end
end
