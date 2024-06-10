class CreateImagePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :image_posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
