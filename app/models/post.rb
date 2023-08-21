class Post < ApplicationRecord

  has_one_attached :image
  belongs_to :user #ユーザーとの関連付け
  has_many :likes, dependent: :destroy #いいね機能（関連付け）

  def liked_by?(user)
    likes.exists?(user_id: user.id) #likeテーブル内にuser_idがあるか確認
  end
end
