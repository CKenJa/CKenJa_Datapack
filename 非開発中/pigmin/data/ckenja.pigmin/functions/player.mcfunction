#☑スニークしたプレイヤーの近くの埋まったピグリンは抜ける
#☑竹を持ってスニークしたプレイヤーがいたら周りの全ピグリンが追従状態に
execute if predicate ckj03:sneak run function ckenja.pigmin:sneak/
#☑スニークせずニンジン棒を使ったら最寄りのピグリンを視線先に投げる
#☑スニークしてニンジン棒を使ったら最寄りのピグリンを食べる
execute if score @s ckj03_coas matches 1.. run function ckenja.pigmin:click/
#☑食べてる途中はパーティクルとサウンド
execute if entity @s[tag=ckenja.pigmin.eating] run function ckenja.pigmin:player/eating
#☑場面切り替え(メタ魅せコマ)
execute if score @s ckenja.pigmin matches 1.. run function ckenja.pigmin:player/switch