class BlogPost < ApplicationRecord
  validates :author, :blog_entry, :title,  presence: true
  validates :blog_entry, uniqueness: true, length: {maximum: 144, too_long: 'Blog post entries cannot exceed 144 characters. Please shorten your post'}
end
