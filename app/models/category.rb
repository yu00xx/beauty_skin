class Category < ApplicationRecord
  validates :name, presence: true
  has_many :posts, dependent: :destroy #投稿との関連付け
end
