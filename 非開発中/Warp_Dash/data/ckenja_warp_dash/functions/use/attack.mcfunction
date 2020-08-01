say attack
execute if entity @s[nbt={OnGround:0b}] run function ckenja_warp_dash:use/attack/aerial
execute if entity @s[nbt={OnGround:1b}] run function ckenja_warp_dash:use/attack/ground
#execute positioned ~ ~1 ~ rotated 90 
#effect give @e[distance=..2] 