#effect
tp @s ^ ^ ^-3 facing entity @e[type=#ckenja_ghost:target,tag=ckenja_ghost_enemy,limit=1,sort=nearest,distance=..1] eyes
execute as @e[type=#ckenja_ghost:target,tag=ckenja_ghost_enemy,limit=1,sort=nearest,distance=..1] run function ckenja_ghost:ghost/damage
scoreboard players set @s ckenja_ghost2 8
#x
#execute store result score #tmp ckj01_data run data get entity @s Pos[0] 1000
#execute as @e[distance=..1,tag=ckenja_ghost_enemy,limit=1,sort=nearest] store result score #tmp2 ckj01_data run data get entity @e[type=#ckenja_ghost:target,tag=ckenja_ghost_enemy,limit=1,sort=nearest,distance=..16] Pos[0] 1000
#execute positioned ^ ^ ^1 run scoreboard players operation #tmp ckj01_data -= #tmp2 ckj01_data
#execute store result entity @s Motion[0] double -0.1 run scoreboard players get #tmp ckj01_data
#x
#execute store result score #tmp ckj01_data run data get entity @s Pos[2] 1000
#execute as @e[distance=..1,tag=ckenja_ghost_enemy,limit=1,sort=nearest] store result score #tmp2 ckj01_data run data get entity @e[type=#ckenja_ghost:target,tag=ckenja_ghost_enemy,limit=1,sort=nearest,distance=..16] Pos[2] 1000
#execute positioned ^ ^ ^1 run scoreboard players operation #tmp ckj01_data -= #tmp2 ckj01_data
#execute store result entity @s Motion[2] double -0.1 run scoreboard players get #tmp ckj01_data
