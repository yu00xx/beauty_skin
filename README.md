# Beauty Skin

## サイト概要
### サイトテーマ
おすすめの基礎化粧品を投稿したり、他の人の投稿が見られるレビューサイト。

### テーマを選んだ理由
私はスキンケアが好きで、自分に合った商品や肌悩みを解決できる商品をよく探しています。
SNSで、ドラッグストアで見たことはあるが手に取ったことはない商品が紹介されていて、その商品を手に取るきっかけとなりました。
その時に、基礎化粧品を他の人の感想を参考にしながら探せたり、他の人に勧められるサイトがあると様々なスキンケア用品に出会えると思い、このテーマにしました。
化粧品の成分は、配合量の多い順に記載されているため、最初の3つの成分を覚えておくと自分の苦手な成分がわかると言われています。
また、「普通肌」「乾燥肌」「脂性肌」「混合肌」など肌タイプは人によって違うため、商品を選ぶ際には、しっとりしているのかさっぱりしているのかは重要になってきます。
そのため、最初の３つの成分と、使用感が一目でわかると選ぶ商品の絞り込みがしやすくなると思いました。
誰でも気軽に情報を発信できる世の中だからこそ、他の人のリアルな声を届けられるサイトを作りたいと考えました。

### ターゲットユーザ
- スキンケアが好きな人。
- 肌悩みがある人。
- 商品の情報が知りたい人。
- 使ったことない商品に出会いたい人。
- 自分のおすすめ商品を共有したい人。

### 主な利用シーン
- 使ってよかった基礎化粧品を投稿する時。
- 新しく使いたい基礎化粧品を探す時。
- 商品の使用感が知りたい時。
- 使った商品の記録用として。

## 設計書
<...>

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 機能一覧
- ユーザー側
  - 新規登録、ログイン、ログアウト機能(deviseを使用)
  - マイページ閲覧、編集、退会機能
  - 新規投稿、一覧表示、詳細表示、削除機能
  - レビュー機能
  - コメント機能、コメント削除機能
  - いいね機能、いいね一覧表示機能
  - 検索機能
- 管理者側
  - ログイン、ログアウト機能(deviseを使用)
  - ユーザー一覧表示、詳細表示、退会機能
  - 投稿一覧表示、詳細表示、削除機能
  - カテゴリ追加、一覧表示、編集機能
  - コメント一覧表示、削除機能