class Like < ApplicationRecord

  belongs_to :user #ユーザーとの関連付け
  belongs_to :post #投稿との関連付け
end
