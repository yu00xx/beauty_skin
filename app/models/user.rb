class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #バリデーション
  with_options presence: true do
    validates :name
    validates :gender
    validates :skin_type
  end

  has_one_attached :profile_image #プロフィール画像用

  has_many :posts, dependent: :destroy #投稿との関連付け
  has_many :likes, dependent: :destroy #いいね機能（関連付け）
  has_many :like_posts, through: :likes, source: :post #中間テーブル(likes)を通したPostモデルとの関連付け
  has_many :comments, dependent: :destroy #コメントとの関連付け

  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpeg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [width, height]).processed
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト"
      user.gender = "woman"
      user.skin_type = "normal"
    end
  end

  enum gender: { man: 0, woman: 1 } # 性別選択用

  enum skin_type: { normal: 0, oily: 1, dry: 2, mix: 3, unknown: 4 } # 肌タイプ選択用
  # normal  = 普通肌
  # oily    = 脂性肌
  # dry     = 乾燥肌
  # mix     = 混合肌
  # unknown = わからない
end
