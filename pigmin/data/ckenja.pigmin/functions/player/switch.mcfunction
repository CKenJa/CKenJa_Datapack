#ここの処理がうまくいかない場合はアイテム捨て検知あたりに変える。スロットは固定でreplaceuitem再生
scoreboard players add # ckenja.pigmin 1
#1.エリトラで旅行中に墜落した主人公(エリトラを壊す)
execute if score # ckenja.pigmin matches 1 run function ckenja.pigmin:player/1
#2.titleコマンドでロゴ表示
execute if score # ckenja.pigmin matches 2 run function ckenja.pigmin:player/2
#3.引っこ抜かれるとついてくる
execute if score # ckenja.pigmin matches 3 run function ckenja.pigmin:player/3
#4.笛を吹くと集まってくる(森についてきてない個体を用意)
execute if score # ckenja.pigmin matches 4 run function ckenja.pigmin:player/4
#5.投げられると自分で判断して仕事をする(棺桶ダンスを移した後橋を作る)
execute if score # ckenja.pigmin matches 5 run function ckenja.pigmin:player/5
#6.ホグリンが倒されると棺桶ダンスのBGMが流れる
execute if score # ckenja.pigmin matches 6 run function ckenja.pigmin:player/6
#7.BGM切り替え
execute if score # ckenja.pigmin matches 7 run function ckenja.pigmin:player/7
#8.原生生物に立ち向かってくれる
execute if score # ckenja.pigmin matches 8 run function ckenja.pigmin:player/8
#9.ときどき食べられることもある
execute if score # ckenja.pigmin matches 9 run function ckenja.pigmin:player/9
#10.リセット
execute if score # ckenja.pigmin matches 10.. run function ckenja.pigmin:player/10