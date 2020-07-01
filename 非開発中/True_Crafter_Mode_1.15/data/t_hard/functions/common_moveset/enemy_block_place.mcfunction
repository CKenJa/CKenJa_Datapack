#自身と付近のプレイヤーのY座標の差を取得
execute if entity @a[distance=..16,gamemode=!creative,gamemode=!spectator] store result score @s T_Hard_Y_Check run data get entity @s Pos[1] 1
execute as @a[distance=..16] store result score @s T_Hard_Y_Check run data get entity @s Pos[1] 1
scoreboard players operation @s T_Hard_Y_Check -= @p[distance=..16,gamemode=!creative,gamemode=!spectator] T_Hard_Y_Check

#Y座標がプレイヤーのほうが高く、自分が止まっているならブロック設置
scoreboard players add @s[tag=T_Hard_Place_Down] T_Hard_Place 1
execute if entity @s[scores={T_Hard_Y_Check=..-1},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] rotated ~ 0 if block ~ ~2 ~ #t_hard:can_place run tag @s add T_Hard_Place_Down
execute unless block ~ ~2 ~ #t_hard:no_dig run data modify entity @s[tag=T_Hard_Place_Down,nbt={OnGround:1b}] Motion[1] set value 0.5
execute if entity @s[tag=T_Hard_Place_Down] if block ~ ~-1 ~ #t_hard:can_place run playsound block.stone.place hostile @a ~ ~ ~ 1 0.8
execute if entity @s[tag=T_Hard_Place_Down] if block ~ ~-1 ~ #t_hard:can_place run setblock ~ ~-1 ~ mossy_cobblestone
execute if entity @s[tag=T_Hard_Place_Down] positioned ~ ~-1 ~ if block ~ ~ ~ mossy_cobblestone unless entity @e[tag=T_Hard_Enemy_Block,distance=..0.5] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:61,Tags:["T_Hard_Enemy_Block"]}
tag @s[tag=T_Hard_Place_Down,scores={T_Hard_Place=5..}] remove T_Hard_Place_Down
scoreboard players reset @s[scores={T_Hard_Place=5..}] T_Hard_Place

#水平方向に設置
execute if entity @s[scores={T_Hard_Y_Check=0},nbt={OnGround:1b}] rotated ~ 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #t_hard:can_place if block ~ ~-2 ~ #t_hard:can_place run playsound block.stone.place hostile @a ~ ~ ~ 1 0.8
execute if entity @s[scores={T_Hard_Y_Check=0},nbt={OnGround:1b}] rotated ~ 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #t_hard:can_place if block ~ ~-2 ~ #t_hard:can_place run setblock ~ ~-1 ~ mossy_cobblestone
execute if entity @s[scores={T_Hard_Y_Check=0},nbt={OnGround:1b}] rotated ~ 0 positioned ^ ^-1 ^1 if block ~ ~ ~ mossy_cobblestone unless entity @e[tag=T_Hard_Enemy_Block,distance=..0.5] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:61,Tags:["T_Hard_Enemy_Block"]}