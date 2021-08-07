#アイテムを持ってる&クリック
##ブタに乗っていない-->召喚(古いのが要る場合はそいつをキル)
##ブタに乗っている
###フックがない-->射出
###フックがある-->収納
#execute if data storage ckj04: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} unless data storage ckj04: fetch_entitydata{Inventory:[{Slot:-106b,tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}]} if score @s ckj04.coas matches 1 run function ckenja.pigrapple:click/general
#(ここの実装は後回し)

#アイテム入れ替えた
##フックがある-->ジェット巻き取り
##フックがない(浮遊利用)
###空中-->1回きりの二段ジャンプ(フロート的な)
###地面-->ジャンプ
execute unless data storage ckj04: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} if data storage ckj04: fetch_entitydata{Inventory:[{Slot:-106b,tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}]} run function ckenja.pigrapple:swap/general

#ブタに乗っている
##フックがある
###Motion計算(代入はエンティティ側で行う)
###アイテム持ってる&ジェット噴射なう-->視線制御
##初めてブタに乗ったらブタにタグをつける(降りたときに殺すよう)
execute if data storage ckj04: fetch_entitydata{RootVehicle: {Entity: {Tags: ["ckenja.pigrapple_pig"]}}} run function ckenja.pigrapple:ride/general
