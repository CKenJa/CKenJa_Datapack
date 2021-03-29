execute as @e[type=pig] run say yey2
execute as @e[type=pig] store result score $2-2 ckj03_data run data get entity @s Motion[2] 1000000
execute as @e[type=pig] run data merge entity @s {Motion:[0.0,0.0,1.0]}
execute as @e[type=pig] store result score $2-2$ ckj03_data run data get entity @s Motion[2] 1000000