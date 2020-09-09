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
***
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
*プロフィール詳細ページから編集ボタンをクリックし、プロフィール編集ページに遷移する  
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
  ・プロフィール編集機能  
  ・ダイレクトメッセージ機能  
  ・有料会員登録機能
  
■データベース設計  
  ![ER図](https://viewer.diagrams.net/?highlight=0000ff&edit=_blank&layers=1&nav=1&title=%E3%82%AA%E3%83%AA%E3%82%B8%E3%83%8A%E3%83%AB%E3%82%A2%E3%83%97%E3%83%AA.drawio#R7Z1bb%2BI4FMc%2FDY87yh14LEw7K21H6rY72pmnyiUGMhNi5JgC%2B%2BnXTuwEMJdkQmonRKoq7Dgm8f%2Fkl%2BPjCz17vNh8wWA5%2F4p8GPYsw9%2F07M89y7KdPv3PMrZpRt%2FiGTMc%2BGmWmWe8BP9Bnmnw3FXgw3ivIEEoJMFyP3OCoghOyF4ewBit94tNUbj%2FrUswg1LGywSEcu6%2FgU%2Fmae5A3AXL%2FxMGs7n4ZtMbpkcWQBTmdxLPgY%2FWO1n2fc8eY4RI%2BmmxGcOQtZ1ol%2FS8hxNHswvDMCJFTvj3b%2Ftp%2FeXx%2BeWb8zDcwh%2Bfv3rbPwZ2Ws07CFf8jidzQF7pZS1eVzHEMb94shUtQu9jyT4S8MayRjEBmHDhbINmUCkICCKIaYaZpMMQLOMgKZ7mzIPQfwRbtCKiIpEaTYMN9J9T3VhZKuEjrYwlWeVTWvkLvxh2GITBLKKfJ7QV2DeOMIzptTyCmPAScjvxpnuHmMDNThZvty8QLSDBW1qEH3W4hNyGbZ5c5wZhDnjefNcYREHAjXCW1ZzrRD9wqcrI5kiyndSJ3jkJQPhMnw4QzRLJ9hVhzepjtPwH4BkkPGOJAtag9%2B%2B01bK2D8JwjELEhI1QxGoiaMkPhnAqzn1DhKCF0I%2B3R1Zp0hbuiP7R1hkbn9yeSy93TNNmnqZ%2FrDgmYxTFBFNzYnVAquoaMmWPqHrevi9rXVLc%2BrR1JW2f%2FiqnboJCkKtbWjjjQLjDpw7R9pyGCc3mge%2FDqIQiTmFFdiSwP1QBT1KAlb9jRqhWB0G7tOwoXoJJEM0e0zO9A6HcDxNq0zv56LgfKly%2FEVg8VLUJWPSUY3EgafugGovQD0R9p6i4T86C6vQLq6MMkcMzfmNTYFkFjsUl0gWOQ6ODY01wHKqG49CUtG0rHDMz1heOQ0tSg3Wlb4GLJdTRhot9SQ%2Foz6CwS8qTOZqhCIT3ee4Io1XkQ5%2B3aF7mESVSMIP%2FCQnZ8rgIWBFEs%2BZkEfKjcBOQ7%2Bz0Ty5P%2Fdg58nkjHiKW2IpE5N%2BxkBZN3j8vQLRN8x4CdsNJCVkl%2FljFaIUn8Ewr8HLszs%2BqhmEISPC%2BHx07pgk%2F9QklBi%2FUdoUfKdxKe7BfBUleKPysXFl632C7U4y%2FFUp8z0FwrFx5%2BiG9gtzMsjb5fcuTof2ti7ilR53%2B74XcXOsMJvi35XjNIWTuf5155I3uFYASCGmTRIDAEeNDLLHpCkYjv1t09OLUR%2F6Km5wugT85FN%2BmuJ9VWA9VbpscU2%2BKw3bFqF9xmXTx30TFmhNRfb%2B2NBGVx%2Fxs2UNS%2FCgW6NQWVMMu3lNSBURb9jWiYPIrAguauqOmSCmkOxo%2FRiFdWGh1AyA1sVB5iM%2BSxz9aw0JL%2FwEPSx7wiNmlNsE9%2FBhltGFgVaehY%2BAJBpqWcghWjX7oDMHieiiDoByimAY4Jq%2B34hKWD2Sqx2Ezpgo2EYeuchzKUwXbg0P95wla8jzBENwSDZs3Q9DsnMO6aDhQTUOzxc6hqb9zaJ5zDl9%2FgQjcAhNLCKULE6s6ER0STyAxW8SmDImyg9IaIrqF1VAFRDkWn3mHN4PD4irpQkNbfo11OLwODh3VOLSrxkI05qFdfNa6svFk2dOACxCEtwDCEvJoQ8Kq3kNHwlMk7CsnYdWJAjqT0CushzISyoP5SxDHa4T9m4BhcYW0gaE8%2Ft%2FB8ErzrlXDUPilrYThsLAeyuZdyzH5twCTuc%2FW29z5gMA2o7C4Prqg0KkaZ%2B9QeAqFytegOFWjHxqjMLNbjVF4ZA3KItmhrP1OYQl5tCFhN3RSFwmVrz1xWjx24ug%2FeOIcGT0JfsHXmFlj3Pp51yUU0gaGVRcodDA8BUPli0%2BcqtEPnWE4KKyHKhi6coAigSGBYNF%2BFBbXRxcUut0sw5pQ6ChfguJWjX5ojEK3uB7KUCgHKJYYTmmTrjBsv19YQiFtYNgtQKkLhsoXoLgtXoDi6r8AxZVjFD%2FRW%2Fsh2Lx1J13fuC4GKl920uKusf49Y1PuGS8AxkE6ZtJuDDavX2yK1TE67LVq9M7vtUpv%2BLuogCV%2B5DWwZH5akvqIPVrFrEEiwH%2FSMnjw%2FHq7uVaUXUaitlvsHpd9cFF2mnqCOKAtlmzDqo0tmIallTH0ZWJnvxxwEtY3tPOtJYh8Zivaow7OsC5q95sRzVS%2F5Wxm2lffc9atTVs5mtmmTWf7Vwto1qeAHNC8wW1nSwhV0pmtTThXnqHwnLxBKUTmwbJ7l8m7uHtFVwDW98uJbjMiMepfZm7xnf902UDdlUMxbXqZufqHYzzZub%2FBl1kJoXSJzHjN8PHVB6jLY1H5TFZP9vHb%2BuNg3tX8%2FfrUOLJNEn160Dr9gTDNKVmBiiW00YaK3dSFuqiofEqrJ09daC0V9Z%2FJ4MkzGVIqUvy0HIvNm8wwlPvQSQh%2FAeKYDbx2kY9sqyPRNS4c%2BPBqE60ZGxioD3wMi%2FfedAl8mIbc725T5COzXX1fYKYh96BvMPRRQild3mbZALnmZFTv5Zcno%2FLYh2nI3e22uvm5IeuMSblLPZmjdPrHLfxAehmR9CFkt89BXYRUHgcxDbnr3V5C6r%2FxgWnI8wpWcRocbj8cm7ftgWk0Y0ZBE%2BGo%2FgfnTKPFyzty09UYh8dWeMA0zngDm2KVkUgbIopfglE03b%2B3s8Yjm%2Fp%2Fabr%2FJ4O16e6Uf9b0mk36F5JdXgDCFbjenP%2FkVHpjYLtTgL9D8pqfUOKgnJr%2Fx7e3y40rrTA3tezKqlif0xzru2QqmX3uLDzKFrGcsczfNzGxC99FExNv8yubmGRD5sFQimsecCu9Un5Wbl1lbdUe7H%2BP3Xd3q7tY3uW2fqp8NqX1ePmyDwNNYoTIbnEMlvOvyIesxP8%3D)
  

■ローカルでの動作方法（使用バージョンrails _6.0.0）  
  ①cdコマンドでmatchingapp28365ディレクトリまで移動  
  ②matchingapp28365ディレクトリにてrails sを実行  
