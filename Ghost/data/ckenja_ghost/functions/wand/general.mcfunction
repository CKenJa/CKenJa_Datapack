#ポルゲイ用キャンディー持ってたらID用意
execute store success score #tmp2 ckj01_data run execute if data entity @s Inventory[{tag:{ckenja:{Tags:["ckenja_ghost:candy"]}}}] run scoreboard players operation #tmp ckj01_data = @s ckj01_id

#スニークしてるか
execute store result score #tmp5 ckj01_data run execute if predicate ckj01:sneak

#視線先エンティティ原理わからん
tag @s add ckenja_ghost_watcher
execute positioned ^ ^ ^10.1 as @e[type=#ckenja_ghost:target,distance=..16,tag=!global.ignore.kill,tag=!global.ignore.gui,tag=!global.ignore] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=ckenja_ghost_watcher,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[distance=..1.5] run tag @s add ckenja_ghost_target
scoreboard players set #tmp4 ckj01_data 0
execute as @e[tag=ckenja_ghost_target,sort=nearest,limit=1] run function ckenja_ghost:wand/entity
tag @s remove ckenja_ghost_watcher
tag @e[type=#ckenja_ghost:target,tag=ckenja_ghost_target] remove ckenja_ghost_target

#ポルゲイキャンディーclear
execute if score #tmp ckj01_data matches 1 if score #tmp3 ckj01_data matches 1 run function ckenja_ghost:wand/candy

#視線先に誰もいねぇじゃん！しかもスニークしてるじゃん！じゃあエネミータグ外そうか！
execute if score #tmp4 ckj01_data matches 0 if score #tmp5 ckj01_data matches 1 run tag @e[type=#ckenja_ghost:enemy,distance=..48] remove ckenja_ghost_enemy