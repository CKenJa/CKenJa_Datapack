#視線先エンティティ原理わからん
tag @s add ckenja_ghost_watcher
execute positioned ^ ^ ^10.1 as @e[type=#ckenja_ghost:target,distance=..16] positioned as @s positioned ^ ^ ^1000 facing entity @e[type=player,tag=ckenja_ghost_watcher,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add ckenja_ghost_target
execute as @e[tag=ckenja_ghost_target,sort=nearest,limit=1] run function ckenja_ghost:wand/entity
tag @s remove ckenja_ghost_watcher
tag @e[type=#ckenja_ghost:target,tag=ckenja_ghost_target] remove ckenka_ghost_target
