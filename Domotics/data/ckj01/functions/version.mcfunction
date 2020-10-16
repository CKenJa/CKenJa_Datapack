##CkenJa's root Ver0.1.0.1 ckj01
#CKenJa's modulesから名前変更！機能も大幅に増加し、完全に依存させる形に
#名前空間はckenjaからckj01に変更。競合はないぞ！しかも更新も考えてあるぜ！
#
###更新履歴
#2020/09/04 0.1最低限の実装
#2020/09/05 0.1.0.1 rootでplayer・entityが実行者位置で実行するように entity_typesにundeadを追加　scoresにusetimeを追加　dataモジュールを作成

###root - 実装完了
#ckj01:rootをminecraft:tickに登録する。
#そしてfunctionをサーバー、プレイヤー、エンティティの3つに分けることで大幅な軽量化(誇張)
#さらにckj01:root/in_root,early,standard,lateを呼び出すことで、遅延読み込み的なことをする。
#最後にckj01:root/reset_scoreを呼び出してスコアリセット！これでスコアボードが大幅に扱いやすくなる！
#Lantern Loadと似たような考えだね。https://github.com/LanternMC/Load
#※in_rootは原則ckj01内でのみ使用

###score - 実装完了
#rootに依存することでスコアボードを扱いやすくなったぜ！
#前作からスコア名は接頭尾がckenjaからckj01になったことで競合はないぞ！しかも更新も考えてあるぜ！
#
####list
#ckj01_sneak スニーク時間。スニークしてない時は0になる。スニーク判定のpredicate付き。
#ckj01_coas carrot on a stickの略。使用判定。

###id
#プレイヤーにIDを配る人。ちなみにOh My Datも似たようなものを搭載してるっぽい。
#id/registerを実行することでその他エンティティにもIDを配れるが、みだらに配るとID枯渇の危険がある...かもね

###data
#あらかじめデータや値を保存しておくckj01_dataスコアボードに関するモジュール
####list
#tmp これは例外で、計算に使うスコアボードその1。
#loop_counter ループカウンターその1。
#4

#####working memory
##wmで始まるダミープレイヤーは数字の一時記録に使う。他のfunctionから呼び出したりはできないししないでくれ