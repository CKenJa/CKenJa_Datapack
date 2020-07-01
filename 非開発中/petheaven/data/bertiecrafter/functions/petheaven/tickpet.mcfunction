#Current As/At: A pet
#Init
scoreboard players add @s[tag=!bcph_initiated] bcph_Progress 1
execute if entity @s[scores={bcph_Progress=1}] run function bertiecrafter:petheaven/initiate
execute if entity @s[scores={bcph_Progress=10}] run function bertiecrafter:petheaven/initiate2

#Die
execute if entity @s[nbt=!{Fire:-1s}] run data modify entity @s Fire set value -1s
execute if entity @s[scores={bcph_Progress=20},tag=!bcph_died] run function bertiecrafter:petheaven/trydie
tag @s[tag=!bcph_initiated,scores={bcph_Progress=20}] add bcph_initiated

#Leave
execute if entity @s[tag=bcph_died] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:poppy"},PickupDelay:0s}] run function bertiecrafter:petheaven/leave
scoreboard players add @s[tag=bcph_leaving] bcph_Progress 1
execute if entity @s[scores={bcph_Progress=420..},tag=!bcph_ended] run function bertiecrafter:petheaven/end

#Revive
execute if entity @s[tag=bcph_died] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:totem_of_undying"},PickupDelay:0s}] run function bertiecrafter:petheaven/revive