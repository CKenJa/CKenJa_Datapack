#CKenJa's scores moduleはスコアの登録やリセットを司るモジュールです。
#競合対策のためスコアごとに関数を作成します。
##一覧
#kill キルした瞬間だけ1になる。
#sneak スニークしているときは1。
#sneaktime スニークし始めてからの時間。スニークしてない時は0。
#jump ジャンプした時は1。
#use 人参棒を使ったときは1。
#crossbow クロスボウ使ったときは1
##非実装
#elytra エリトラで飛行しているときは1。
#dash ダッシュしているときは1。
#dash_time ダッシュしている時間。していない時は0。
##更新履歴
#2020/5/09 1.0 なんとなく作った。
#2020/5/12 1.1 各tick関数がスコアリセット前に関数を呼び出すようにした。sneaktimeが正常に動かない問題を修正した。
#2020/5/13 1.2 useタグ関数を人参棒をクリックしているときだけ実行するようにした。
#2020/5/31 1.3 スコア名cscoreをckenjaに変更。sneaktime関数の後に関数タグを呼び出すように。
#2020/6/06 1.4 魅せコマ用にクロスボウ追加