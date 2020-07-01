tag @s add cken_combat_head
scoreboard players add #cken ccombat_village 1
execute as @e[type=villager,distance=..100,nbt={Age:0..},tag=!cken_combat_villager] run scoreboard players operation @s ccombat_village = #cken ccombat_village
execute as @e[type=villager,distance=..100,nbt={Age:0..},tag=!cken_combat_villager] run tag @s add cken_combat_villager