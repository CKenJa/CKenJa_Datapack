#ポルゲイ用キャンディー持ってたらID用意
execute store success score #tmp2 ckj01_data run execute if data entity @s Inventory[{tag:{ckenja:{Tags:["ckenja_ghost:candy"]}}}] run scoreboard players operation #tmp ckj01_data = @s ckj01_id
#視線先エンティティ原理わからん
tag @s add ckenja_ghost_watcher
execute positioned ^ ^ ^10.1 as @e[type=#ckenja_ghost:target,distance=..16,tag=!global.ignore.kill,tag=!global.ignore.gui,tag=!global.ignore] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=ckenja_ghost_watcher,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[distance=..1.5] run tag @s add ckenja_ghost_target
execute as @e[tag=ckenja_ghost_target,sort=nearest,limit=1] run function ckenja_ghost:wand/entity
tag @s remove ckenja_ghost_watcher
tag @e[type=#ckenja_ghost:target,tag=ckenja_ghost_target] remove ckenja_ghost_target