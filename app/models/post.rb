class Post < ApplicationRecord

  has_one_attached :image
  belongs_to :user # ユーザーとの関連付け
  belongs_to :category # カテゴリとの関連付け
  has_many :likes, dependent: :destroy # いいね機能（関連付け）
  has_many :comments, dependent: :destroy #コメントとの関連付け
  #ステータスが有効である会員のコメントのみ表示できるようにメソッドを作成
  has_many :active_comments, -> {joins(:user).where(user: {is_deleted: false})}, class_name: "Comment"

  #バリデーション
  with_options presence: true do
    validates :item_name
    validates :introduction
    validates :brand
    validates :usability
    validates :ingredient1
    validates :ingredient2
    validates :ingredient3
    validates :price
    validates :image
    validates :star
  end

  enum usability: { moist: 0, refresh: 1 } # 使用感選択用
  # moist   = しっとり
  # refresh = さっぱり

  def liked_by?(user)
    likes.exists?(user_id: user.id) # likeテーブル内にuser_idがあるか確認
  end
end
