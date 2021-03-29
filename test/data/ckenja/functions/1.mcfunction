execute as @e[type=pig] run say yey1
execute as @e[type=pig] store result score $1-2 ckj03_data run data get entity @s Pos[2] 1000000
execute as @e[type=pig] run data merge entity @s {Motion:[0.0,0.0,1.0]}