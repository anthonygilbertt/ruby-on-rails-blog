class AddTitleToBlogPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :blog_posts, :title, :string
  end
end
