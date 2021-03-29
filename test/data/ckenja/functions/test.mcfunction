execute as @e[type=pig] run schedule function ckenja:1 1t
execute as @e[type=pig] run schedule function ckenja:2 2t
execute as @e[type=pig] run schedule function ckenja:3 3t
execute as @e[type=pig] run say yey
execute as @e[type=pig] run tp 0.0 56.0 0.0
execute as @e[type=pig] store result score $0-2 ckj03_data run data get entity @s Pos[2] 1000000
execute as @e[type=pig] run data merge entity @s {Motion:[10.0,0.0,0.0]}