#id登録
scoreboard players operation @s ckenja_ghost = #tmp ckj01_data 
#ポルゲイからゴーストに変身する。
tag @s remove ckenja_ghost_polgei
tag @s add ckenja_ghost_ghost
tag @s add ckenja_ghost_young
#スコアリセット
scoreboard players reset @s ckenja_ghost2
#モード:ついてくる
tag @s add ckenja_ghost_follow
execute at @s run particle heart ~ ~2 ~ 0.5 0.5 0.5 1 8 normal