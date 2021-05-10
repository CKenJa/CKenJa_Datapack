#> ckenja.pigrapple:player
#@within #ckj04:root/player/standard

#プレイヤーIDをメモっておく
scoreboard players operation #tmp_id ckj_pig_hook_id = @s ckj04.id

#アイテム関係の処理をまとめる
##アイテムを持っている: スロットを記憶、タグ付け mainhand,offhand
execute if data storage ckj04: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} run function ckenja.pigrapple:player/mainhand
execute unless data storage ckj04: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} if data storage ckj04: fetch_entitydata{Inventory:[{Slot:-106b,tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}]} run function ckenja.pigrapple:player/offhand

##アイテムを持っていない&haveタグが付いている not_have
####捨てられている: 捨て検知drop後、タグ付け
####捨てられていない: タグを外す
execute unless data storage ckj04: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} unless data storage ckj04: fetch_entitydata{Inventory:[{Slot:-106b,tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}]} if data storage ckj04: fetch_entitydata{tags:["ckenja.pigrapple_player_have"]} run function ckenja.pigrapple:player/not_have/general


#ブタに乗っていないnot_ride
##アイテム検知&クリック検知:視線先に豚召喚(重力あり)、古い豚はキルclick-->/summon
##初回: フック解除、豚キルinit
##捨て検知: ジェットモード切り替え 音付き
#execute unless data storage ckj04: fetch_entitydata{RootVehicle: {Entity: {Tags: ["ckenja.pigrapple_pig"]}}} run function ckenja.pigrapple:player/not_ride/general

#ブタに乗っているride
##初めてならブタにrideタグを付けるinit
##フックなし/player/none_hook
###アイテム検知
####クリック検知: フック射出、空中ジャンプ回復、鎖長取得/behavior/shot
####捨て検知: ジャンプ/behavior/jump
#####空中: 地面につくまでジャンプできない
###地面に付いている: 空中ジャンプ付与

##フックありexist_hook(書いてない)
###アイテム検知/have
####クリック検知: 収納behavior/unhook
####捨て検知: ジェットモード切り替え 音付き
####ジェットモード: 視線更新refresh_direction

###スイングモード: Motion計算operation/swing/general
###ジェットモード: Motion計算

###ブロックにぶつかったら解除(?)
###XZのMotionが0: フック解除(めんどいので必要になったら実装)
###地面に付いている: フック解除(めんどいので必要になったら実装)
#execute if data storage ckj04: fetch_entitydata{RootVehicle: {Entity: {Tags: ["ckenja.pigrapple_pig"]}}} run function ckenja.pigrapple:player/ride/general


#アイテムを持っていないがタグはついている: 捨て検知