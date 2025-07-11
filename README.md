![Rails](https://img.shields.io/badge/Rails-7.0-red?logo=rubyonrails)
![Ruby](https://img.shields.io/badge/Ruby-3.2.2-red?logo=ruby)
# Wainavi

## アプリケーション概要  
Wainavi（ワイナビ）は、日本全国のワイナリーを検索・記録・共有できるWebアプリケーションである。  
ユーザーは自分に合ったワイナリーを見つけ、訪問したワイナリーの体験を記録し、他のユーザーと情報を共有することができる。

### 主な機能
- ワイナリーの一覧表示および詳細ページの閲覧  
- ワイナリータイプ、ワインスタイル、ぶどう品種、体験内容、受賞歴によるフィルター検索  
- コメントと星評価（★1〜5）の投稿（＝訪問したワイナリーの体験を記録）  
- お気に入りワイナリーの保存とマイページでの管理  
- ユーザー登録・ログイン機能（認証あり）

> ※「訪問したワイナリーの体験を記録する」機能について  
> この機能は、**ワイナリー詳細ページにコメントとして投稿する形**で実現している。  
> ユーザーが体験を自由に記録できる場として、**食べログの口コミ機能のようなイメージ**。  
> 将来的には、マイページ上で投稿を一覧表示し、感想を記録できる機能の追加も検討しているが、初期リリースには含めていない。

### ユーザー管理機能
- 新規登録・ログイン／ログアウト（認証あり）  
- マイページ機能

> ※マイページの目的について  
> 初期段階では、**ユーザー情報と、お気に入り登録したワイナリーの一覧表示**を主な機能としています。  
> 今後、投稿の管理や閲覧履歴表示などの拡張も検討中です。


## URL  
※後日記載

## テスト用アカウント  
- Basic認証ID：xxx  
- Basic認証PASS：xxx  
- メールアドレス：xxx@example.com  
- パスワード：xxxxxx  

## 利用方法  
1. メールアドレスとパスワードでユーザー登録を行う  
2. ログイン後、トップページにてワイナリー一覧を閲覧する  
3. フィルター検索を活用し、以下の条件で絞り込む：  
   - ワイナリータイプ  
   - ワインスタイル  
   - 使用ぶどう品種  
   - 体験内容（試飲・見学など）  
   - 受賞歴  
4. 気になるワイナリーをクリックし、詳細情報を確認する  
5. コメントと星評価（1〜5）を投稿する  
6. お気に入りワイナリーは「保存」ボタンでブックマークし、マイページで管理する  

## 作成背景  
- 国内ワイナリーに関する情報が分散しており、検索や比較がしづらいという課題があった  
- ワインに興味を持つユーザーが、自分に合ったワイナリーを見つけられる検索機能が必要であった  
- ワイナリータイプ・品種・体験・受賞歴など、複数条件によるフィルター検索を実現したかった  
- 訪問先ワイナリーに対してコメントや評価を残せる機能が有用と考えた  
- お気に入りをブックマークし、他のユーザーと共有できる仕組みを実装したかった  
- 日本ワインに関心を持つ外国人観光客でも使いやすいUI・多言語対応を目指した  
- ActiveHash・中間テーブル・検索機能・ユーザー認証などを習得するために設計した  

## 実装予定機能  

### 第1段階｜基本機能  
- 地域・種類・設備などによる複数フィルター検索  
- 検索結果をカード形式で一覧表示  
- ワイナリーの詳細ページ（show）の実装  

### ユーザー管理機能  
- 新規登録（sign_up）  
- ログイン／ログアウト（sessions）  
- マイページの表示  

### コメント管理機能  
- コメント投稿（create）  
- 一覧表示（index）  
- 編集・削除（edit / update / destroy）  

### 第2段階｜インタラクティブ性とエンゲージメント向上  
- ワイナリー評価機能（★1〜5、1ユーザー1評価）  
- お気に入り登録・削除機能、ブックマーク一覧表示  
- 多言語化（i18n、日本語／英語切替、ブラウザ言語に応じた表示対応）  

### 第3段階｜コミュニティ機能  
- フォーラム機能（スレッド形式の投稿・一覧・編集・削除）  
- ユーザー投稿による独自ワイナリー紹介ページの作成  
- コメント数・評価数・利用期間に応じたユーザーランク表示（バッジ機能）  
- Google／Twitterアカウントによるログイン、SNSシェアボタンの設置  

### 第4段階｜ユーザー間交流と予定調整機能  
- 気に入ったワインの「マイワイン」保存機能  
- 保存ワインの共有機能  
- カレンダーUIを用いた予定調整機能  
- 候補日の提示と投票機能の検討  

## データベース設計  

[![Image from Gyazo](https://i.gyazo.com/7b2a92d717e8b48f2099a0e250eae906.png)](https://gyazo.com/7b2a92d717e8b48f2099a0e250eae906)

## 画面遷移図  

[![Image from Gyazo](https://i.gyazo.com/52a3af5eb5b90e1dba237befada02921.png)](https://gyazo.com/52a3af5eb5b90e1dba237befada02921)

## 開発環境   
- 言語：Ruby 3.2.2  
- フレームワーク：Ruby on Rails 7  
- DB：PostgreSQL  
- フロントエンド：Hotwire（Turbo, Stimulus）、Tailwind CSS（予定）  
- 使用サービス：Render, GitHub, Gyazo, Google Fonts

## ローカル動作手順
```bash
git clone [リポジトリURL]
cd Wainavi
bundle install
rails db:create
rails db:migrate
rails s
