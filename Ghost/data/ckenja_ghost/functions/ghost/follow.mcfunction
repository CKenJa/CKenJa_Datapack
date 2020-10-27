scoreboard players operation #tmp ckj01_data = @s ckenja_ghost
execute as @a[distance=..128] if score @s ckj01_id = #tmp ckj01_data run tag @s add ckenja_ghost_master
#プレイヤーの方向を向く
execute if entity @a[tag=ckenja_ghost_master,distance=..3] run teleport @s ~ ~ ~ facing entity @a[tag=ckenja_ghost_master,limit=1] eyes
#離れていたらTP移動
execute if entity @a[tag=ckenja_ghost_master,distance=3..128] run teleport @s ^ ^ ^0.5 facing entity @a[tag=ckenja_ghost_master,limit=1] eyes
tag @s remove ckenja_ghost_master
#敵がいたら
execute if entity @e[type=#ckenja_ghost:target,tag=ckenja_ghost_enemy,distance=..16] run function ckenja_ghost:ghost/start
