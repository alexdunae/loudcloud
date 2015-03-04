class Song < ActiveRecord::Base
  has_many :comments
  has_many :likes

  def like_count
    likes.count
  end
end
