# README

■アプリケーション名
  Sports Village

■概要
  スポーツ観戦で条件の合ったパートナーを見つけることができる、スポーツに特化したマッチングアプリケーション

■URL
  https://matchingapp28365.herokuapp.com/

■テスト用アカウント
  Email:test@test.com
  PW:test1234

■利用方法
①ユーザー登録またはアカウントにログインを実施
②「観戦希望日」、「好きなチーム」等の希望の条件からユーザー検索を行う
③検索結果に表示されたユーザーの中から、興味のあるユーザーに「いいね」を送ることができる
④「いいね」を受け取ったユーザーより、お互い「いいね」を選択されているとマッチングが成立する

■目指した課題解決
  スポーツ観戦のパートナーが見つからない人に、一緒に観戦するパートナーを見つけることができる

■洗い出した要件
  #ユーザー管理機能
  ***
  **目的**
  *ユーザー登録なしではサービスが利用できないようにする
  **詳細**
  *ユーザーが新しく登録できる
  *ユーザー登録後、ログイン・ログアウトができる
  **ストーリー**
  *トップページをアクセス（ログインなしでも閲覧可能）
  *ヘッター画面から新規登録/ログイン
  *登録、ログイン後はトップページに遷移する
  *ログイン後はヘッダーにはユーザー名/ログアウトが表示される
  ***
  #ユーザー検索機能
  ***
  **目的**
  *指定の条件を指定することでユーザーを検索することができる
  **詳細**
  *ユーザー登録している情報から（好きなチーム、観戦日等）条件検索が実行できる
  *条件に沿ったユーザーが表示される
  **ストーリー**
  *ヘッダーよりユーザー検索ページへ遷移
  *ユーザー検索ページにて、希望の条件を選択し、検索を実施
  *条件に沿ったユーザーが表示
  ***
  #観戦リクエスト機能
  ***
  **目的**
  *ユーザー検索で表示されたユーザーに観戦リクエストを送ることができる
  **詳細**
  *検索結果に表示されるユーザー詳細が確認できる
  *プロフィール詳細から観戦リクエストを送ることができる
  **ストーリー**
  *検索結果から気になるユーザーをクリックし、プロフィール詳細に遷移する
  *プロフィール詳細から観戦リクエストをクリック
  ***
  #観戦リクエスト返信機能
  ***
  **目的**
  *観戦リクエストが受信すると、返信できるように設定する
  **詳細**
  *観戦リクエストが送られたユーザーは、トップページにリクエストが表示される
  *観戦リクエストしたユーザー詳細が表示される
  *詳細から観戦リクエスト返信ボタンを表示
  **ストーリー**
  *観戦リクエストがトップページに表示される
  *詳細をクリックすると、リクエストしたユーザーの詳細が表示される
  *詳細から観戦リクエストの返信を行う（Yes or No）
  ***
  #観戦マッチング機能
  ***
  **目的**
  *お互い「いいね」を押したユーザー同士をマッチングすることができる
  **詳細**
  *マッチング成立すると、トップページが更新される
  **ストーリー**
  *マッチングが成立すると、お互いのトップページにマッチング成立が通知される
  ***
  #ユーザープロフィール編集機能
  ***
  **目的**
  *ユーザー登録情報を編集できるようにする
  **詳細**
  *プロフィール詳細ページから編集ページへ遷移
  *編集内容を保存する
  **ストーリー**
  *プロフィール詳細ページから編集ボタンをクリックし、プロフィール編集ページに遷移する。
  *プロフィール情報を編集後、編集反映をクリック
  *プロフィール詳細ページに戻り、プロフィール編集が反映されている
  ***
  #ダイレクトメッセージ機能
  ***
  **目的**
  *マッチング成立したユーザーにダイレクトメッセージを送信することができる
  **詳細**
  *マッチング成立後、マッチングユーザーのプロフィールにDMボタンが解放される
  *クリックするとチャットページに遷移する
  *チャットは、メッセージ送信、受信、画像貼り付け機能の使用が可能
  **ストーリー**
  *マッチング成立後、マッチングユーザープロフィールからDMをクリック
  *専用のチャットルームに遷移し、チャットを送信・受信を行う
  ***
  #有料会員登録機能
  ***
  **目的**
  *トップページのヘッダーから有料会員登録が行える
  **詳細**
  *ヘッダーに有料会員登録ボタンを配置
  *有料会員ボタンから有料会員登録ページに遷移
  *決済方法を選択後、登録完了（トップページ遷移）
  *有料登録完了後、ヘッダーから有料登録ボタンが消える
  *ユーザープロフィールに有料会員のステータスが追加される
  **ストーリー**
  *ヘッダーから有料会員登録ページに遷移
  *決済方法を選択
  *決済完了後、トップページに遷移
  *プロフィールを確認すると、有料会員のステータスが追加されている
  ***


■実装した機能についてのGIFと説明
　実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。

■実装予定の機能
  ・ダイレクトメッセージ機能
  ・有料会員登録機能

■データベース設計
  https://app.diagrams.net/#G11_S_FMB5NrBgFPk8nP6mq-RIQt7f-4HU

■ローカルでの動作方法（使用バージョンrails _6.0.0）
  ①cdコマンドでmatchingapp28365ディレクトリまで移動
  ②matchingapp28365ディレクトリにてrails sを実行
