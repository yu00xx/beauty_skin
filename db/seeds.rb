# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.find_or_create_by!(email: ENV['ADMIN_EMAIL']) do |admin|
  admin.password = ENV['ADMIN_PASSWORD']
end

yui = User.find_or_create_by!(email: "yui@example.com") do |user|
  user.name = "ユイ"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_2588.jpg"), filename:"IMG_2588.jpg")
  user.gender = "woman"
  user.skin_type = "normal"
end

keshousui = Category.find_or_create_by!(name: "化粧水")

Post.find_or_create_by!(item_name: "クオリティファースト ダーマレーザー vc100") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3261.jpg"), filename:"IMG_3261.jpg")
  post.introduction = "毛穴が気になる方におすすめです。内容量も多いので気にせず使えます！"
  post.user = yui
  post.brand = "QUALITY 1st"
  post.usability = "moist"
  post.ingredient1 = "水"
  post.ingredient2 = "DPG"
  post.ingredient3 = "グリセリン"
  post.star = 3
  post.category = keshousui
  post.price = 1650
end

p "データの作成に成功しました"