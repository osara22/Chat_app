# タイトル

## 開発環境
Cloud9<br>
Ruby on Rails<br>

## 題材
SNS系<br>
チャットアプリ<br>

## 開発期間
2週間(できれば12月の初週まで)

## 概要
ライブラリを極力使わないでの制作<br>
(Deviceを使ってのログイン機能はだめ)<br>
無理をしないでできる範囲のことを実装する(エンジニアとして大事)<br>

今できることはRuby on railsのみ<br>
SNSを制作するに適したフレームワークなのでそれを製作しない手はない<br>

## テーマ？
	⁃	リアルタイム更新のチャットアプリ(active cableで実装)
	⁃	画像とかも貼れる(active storage?)
	⁃	お問い合わせ機能追加(出来れば,action mailer)
	⁃	非同期通信も必要かも(jQuery)
	⁃	Signup,Login機能をdevice無しで実装
	⁃	↑ログイン機能いるか？
	⁃	古のチャットアプリのようにする
	⁃	チャットに個別チャットの短縮URLを貼れるようにする(いい感じの表示にする)
	⁃	個別チャットはパスワードで消せるようにする
	⁃	クッキー作ってページ開いてる間はメッセージを消せるようにする(出来れば)
	⁃	リアルタイム閲覧人数表示
	⁃	総ページ数は約7ページ

## 必要なページ
	1.	Top
	2.	コンテンツ(オープンチャットページ)
	3.	個別チャット一覧ページ(検索機能もつける？)
	4.	個別チャットページ(パスワードが付けられる)
	5.	個別チャット入場前パスワード確認ページ(パスワードがついている場合)
	6.	個別チャット消去パスワード入力ページ(コマンドで消せるようにしてもいいかも)
	7.	個別チャット作成ページ
	8.	問い合わせページ

## 設計書
- [UIフロー仮確定](https://drive.google.com/file/d/1GRhumUz-r-MlgEBUxIpSpWn9SrSZuAxx/view?usp=sharing)
- [ER図 設計中](https://drive.google.com/file/d/1CpLS-h0tddDMVFHBRL-BsMsqY95NrjDv/view?usp=sharing)
- [テーブル定義書 設計中](https://docs.google.com/spreadsheets/d/15r1bQr1rk0HGHscAVaCcneYCPBLNRssIJRbD6BakSJY/edit?usp=sharing)
- [アプリケーション詳細設計 設計中](https://docs.google.com/spreadsheets/d/1Dm4A9WqMY2m-m8zq39UKyfJfodkVM6JAg4AzsYHLw7Y/edit?usp=sharing)
