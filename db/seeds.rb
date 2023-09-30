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

kesyousui = Category.find_or_create_by!(name: "化粧水")
nyuueki = Category.find_or_create_by!(name: "乳液")
kurenjingu = Category.find_or_create_by!(name: "クレンジング")
sengan = Category.find_or_create_by!(name: "洗顔料")
biyoueki = Category.find_or_create_by!(name: "美容液")
masuku = Category.find_or_create_by!(name: "シートマスク")
kurimu = Category.find_or_create_by!(name: "クリーム")

yui = User.find_or_create_by!(email: "yui@example.com") do |user|
  user.name = "ユイ"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_2588.jpg"), filename:"IMG_2588.jpg")
  user.gender = "woman"
  user.skin_type = "normal"
end

mika = User.find_or_create_by!(email: "mika@example.com") do |user|
  user.name = "みか"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_2822.jpg"), filename:"IMG_2822.jpg")
  user.gender = "woman"
  user.skin_type = "oily"
end

aiko = User.find_or_create_by!(email: "aiko@example.com") do |user|
  user.name = "アイコ"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_2468.jpg"), filename:"IMG_2468.jpg")
  user.gender = "woman"
  user.skin_type = "dry"
end

suzuki = User.find_or_create_by!(email: "suzuki@example.com") do |user|
  user.name = "鈴木"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_2891.jpg"), filename:"IMG_2891.jpg")
  user.gender = "woman"
  user.skin_type = "mix"
end

yoko = User.find_or_create_by!(email: "yoko@example.com") do |user|
  user.name = "ヨーコ"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_2947.jpg"), filename:"IMG_2947.jpg")
  user.gender = "woman"
  user.skin_type = "unknown"
end

hana = User.find_or_create_by!(email: "hana@example.com") do |user|
  user.name = "hana"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3257.jpg"), filename:"IMG_3257.jpg")
  user.gender = "woman"
  user.skin_type = "normal"
end

rui = User.find_or_create_by!(email: "rui@example.com") do |user|
  user.name = "rui"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3318.jpg"), filename:"IMG_3318.jpg")
  user.gender = "man"
  user.skin_type = "oily"
end

yuu = User.find_or_create_by!(email: "yuu@example.com") do |user|
  user.name = "ユウ"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/no_image.jpg"), filename:"no_image.jpg")
  user.gender = "man"
  user.skin_type = "dry"
end

taku = User.find_or_create_by!(email: "taku@example.com") do |user|
  user.name = "拓"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/no_image.jpg"), filename:"no_image.jpg")
  user.gender = "man"
  user.skin_type = "mix"
end

ren = User.find_or_create_by!(email: "ren@example.com") do |user|
  user.name = "ren"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/no_image.jpg"), filename:"no_image.jpg")
  user.gender = "man"
  user.skin_type = "unknown"
end

hayato = User.find_or_create_by!(email: "hayato@example.com") do |user|
  user.name = "ハヤト"
  user.password = "000000"
  user.profile_image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/no_image.jpg"), filename:"no_image.jpg")
  user.gender = "man"
  user.skin_type = "dry"
end



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
  post.category = kesyousui
  post.price = 1650
end

Post.find_or_create_by!(item_name: "ファンケル ブライトニング乳液") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3264.jpg"), filename:"IMG_3264.jpg")
  post.introduction = "少量ですごく保湿されます！"
  post.user = yui
  post.brand = "FANCL"
  post.usability = "refresh"
  post.ingredient1 = "ビタミンC・2-グルコシド"
  post.ingredient2 = "グリチルチレン酸ステアリル"
  post.ingredient3 = "精製水"
  post.star = 5
  post.category = nyuueki
  post.price = 1870
end

Post.find_or_create_by!(item_name: "ファンケル ブライトニング化粧水") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3263.jpg"), filename:"IMG_3263.jpg")
  post.introduction = "少量ですごく伸びます。肌に優しい！"
  post.user = yui
  post.brand = "FANCL"
  post.usability = "moist"
  post.ingredient1 = "ビタミンC・2-グルコシド"
  post.ingredient2 = "グリチルチレン酸2K"
  post.ingredient3 = "精製水"
  post.star = 5
  post.category = kesyousui
  post.price = 1870
end

Post.find_or_create_by!(item_name: "ダーマレーザー ウルセラC") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3262.jpg"), filename:"IMG_3262.jpg")
  post.introduction = "毛穴が引き締まります。敏感肌の人は注意！"
  post.user = yui
  post.brand = "QUALITY 1st"
  post.usability = "moist"
  post.ingredient1 = "ガラクトミセス培養液"
  post.ingredient2 = "ナイアシンアミド"
  post.ingredient3 = "ＢＧ"
  post.star = 4
  post.category = biyoueki
  post.price = 2200
end

Post.find_or_create_by!(item_name: "モウシロ ホワイトミルクパック") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3266.jpg"), filename:"IMG_3266.jpg")
  post.introduction = "トーンアップします。"
  post.user = yui
  post.brand = "モウシロ"
  post.usability = "moist"
  post.ingredient1 = "水"
  post.ingredient2 = "ＢＧ"
  post.ingredient3 = "グリセリン"
  post.star = 5
  post.category = masuku
  post.price = 1540
end

Post.find_or_create_by!(item_name: "メラノCC美白化粧水") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3492.jpg"), filename:"IMG_3492.jpg")
  post.introduction = "刺激が強いですが、シミには効きます！"
  post.user = yui
  post.brand = "ロート製薬"
  post.usability = "refresh"
  post.ingredient1 = "エチアスコルビン酸"
  post.ingredient2 = "グリチルリチン酸ジカリウム"
  post.ingredient3 = "アスコルビン酸"
  post.star = 3
  post.category = kesyousui
  post.price = 990
end

Post.find_or_create_by!(item_name: "アベンヌ　ウォーター") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3493.jpg"), filename:"IMG_3493.jpg")
  post.introduction = "敏感肌の人におすすめ！スプレータイプです。"
  post.user = yui
  post.brand = "アベンヌ"
  post.usability = "refresh"
  post.ingredient1 = "温泉水"
  post.ingredient2 = "窒素"
  post.ingredient3 = "なし"
  post.star = 3
  post.category = kesyousui
  post.price = 990
end

Post.find_or_create_by!(item_name: "キュレル　乳液") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3494.jpg"), filename:"IMG_3494.jpg")
  post.introduction = "敏感肌の人におすすめ！ベタつかないです。"
  post.user = ren
  post.brand = "キュレル"
  post.usability = "refresh"
  post.ingredient1 = "アラントイン"
  post.ingredient2 = "水"
  post.ingredient3 = "グリセリン"
  post.star = 5
  post.category = nyuueki
  post.price = 2090
end

Post.find_or_create_by!(item_name: "キュレル　化粧水") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3495.jpg"), filename:"IMG_3495.jpg")
  post.introduction = "肌に優しいです！ベタつかないのにしっとりしています。"
  post.user = taku
  post.brand = "キュレル"
  post.usability = "moist"
  post.ingredient1 = "アラントイン"
  post.ingredient2 = "水"
  post.ingredient3 = "ＢＧ"
  post.star = 5
  post.category = kesyousui
  post.price = 2090
end

Post.find_or_create_by!(item_name: "ハトムギ　化粧水") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3496.jpg"), filename:"IMG_3496.jpg")
  post.introduction = "肌が赤くなりました。量が多いので体に使ってます！"
  post.user = yuu
  post.brand = "肌ラボ"
  post.usability = "moist"
  post.ingredient1 = "水"
  post.ingredient2 = "プロパンジオール"
  post.ingredient3 = "グリセリン"
  post.star = 1
  post.category = kesyousui
  post.price = 738
end

Post.find_or_create_by!(item_name: "ハトムギ　乳液") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3497.jpg"), filename:"IMG_3497.jpg")
  post.introduction = "しっとりします！少しベタつく感じはあります。"
  post.user = rui
  post.brand = "肌ラボ"
  post.usability = "moist"
  post.ingredient1 = "水"
  post.ingredient2 = "グリセリン"
  post.ingredient3 = "ミネラルオイル"
  post.star = 2
  post.category = nyuueki
  post.price = 611
end

Post.find_or_create_by!(item_name: "リンクル ジェルクリーム") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3498.jpg"), filename:"IMG_3498.jpg")
  post.introduction = "エイジングケアに！オールインワンなのでケアも楽です。"
  post.user = hana
  post.brand = "なめらか本舗"
  post.usability = "moist"
  post.ingredient1 = "水"
  post.ingredient2 = "グリセリン"
  post.ingredient3 = "GB"
  post.star = 4
  post.category = kurimu
  post.price = 1650
end

Post.find_or_create_by!(item_name: "スキンローション VC") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3500.jpg"), filename:"IMG_3500.jpg")
  post.introduction = "ビタミンC誘導体が配合されてます！大容量で使いやすい！"
  post.user = yoko
  post.brand = "なめらか本舗"
  post.usability = "moist"
  post.ingredient1 = "水"
  post.ingredient2 = "GB"
  post.ingredient3 = "エタノール"
  post.star = 3
  post.category = kesyousui
  post.price = 438
end

Post.find_or_create_by!(item_name: "イハダ 薬用ローション") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3501.jpg"), filename:"IMG_3501.jpg")
  post.introduction = "乾燥しません！"
  post.user = suzuki
  post.brand = "IHADA"
  post.usability = "moist"
  post.ingredient1 = "アラントイン"
  post.ingredient2 = "グリチルリチン酸ジカリウム"
  post.ingredient3 = "精製水"
  post.star = 3
  post.category = kesyousui
  post.price = 1650
end

Post.find_or_create_by!(item_name: "ボタニカル　ジェルクレンジング") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3502.jpg"), filename:"IMG_3502.jpg")
  post.introduction = "メイクはよく落ちるのに乾燥しません！マツエク、マツぱしてる方でも使えます。"
  post.user = aiko
  post.brand = "ナイス＆クリック"
  post.usability = "moist"
  post.ingredient1 = "水"
  post.ingredient2 = "グリセリン"
  post.ingredient3 = "ポリソルベート20"
  post.star = 4
  post.category = kurenjingu
  post.price = 1078
end

Post.find_or_create_by!(item_name: "セラミド洗顔パウダー") do |post|
  post.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/IMG_3503.jpg"), filename:"IMG_3503.jpg")
  post.introduction = "肌のトーンアップが期待できます！洗顔ネットを使うとより良い！"
  post.user = mika
  post.brand = "ビーバンジョア"
  post.usability = "refresh"
  post.ingredient1 = "バレイショデンプン"
  post.ingredient2 = "タルク"
  post.ingredient3 = "ミリスチン酸K"
  post.star = 5
  post.category = sengan
  post.price = 3850
end


p "データの作成に成功しました"