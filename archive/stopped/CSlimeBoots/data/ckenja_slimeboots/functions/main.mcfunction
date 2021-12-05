execute unless entity @s[scores={ckenja_pos_y=1..}] run scoreboard players set @s ckenja_pos_y 1
execute store result score # ckenja_pos_y run data get entity @s Pos[1]
execute if score # ckenja_pos_y >= @s ckenja_pos_y run scoreboard players operation @s ckenja_pos_y = # ckenja_pos_y
execute if score # ckenja_pos_y < @s ckenja_pos_y run scoreboard players operation @s ckenja_slimeboot = @s ckenja_pos_y
execute if score # ckenja_pos_y < @s ckenja_pos_y run scoreboard players operation @s ckenja_slimeboot -= # ckenja_pos_y
#nbt={OnGround:1b},
execute as @s[scores={ckenja_slimeboot=1..},nbt={OnGround:0b}] run function ckenja_slimeboots:effect
scoreboard players reset @s[nbt={OnGround:1b}] ckenja_pos_y
#高さ取得
#前回の高さより高かったら(上昇中)高さを@sに代入
#前回の高さより低かったら(落下中)最高高度-現在高度=ckenja_slimebootsにする
#execute if score # ckenja_slimeboot matches 4 as @e[nbt={OnGround:0b}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"witch",Duration:6,Age:4,Effects:[{Id:28b,Amplifier:0b,Duration:3,ShowParticles:0b}]}
#execute if score # ckenja_slimeboot matches 4 run scoreboard players reset # ckenja_slimeboot
#scoreboard players add # ckenja_slimeboot 1