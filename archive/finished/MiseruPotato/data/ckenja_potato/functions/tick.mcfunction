#cannon
scoreboard players remove @a[scores={ckenja_potato=1..}] ckenja_potato 1
execute as @e[tag=ckenja_potato] run function ckenja_potato:cannon/projectile
execute as @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}] run execute at @s run execute if block ~ ~ ~ potatoes run function ckenja_potato:recipe
#potato
execute as @e[tag=ckenja_potato_q] run function ckenja_potato:potato/move
#strobe
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp",tag:{display:{Lore:['{"text":"Let\'s air strike!"}']}}}},tag=!ckenja_potato_initial] run execute at @s run function ckenja_potato:strobe/summon
execute as @e[type=item,nbt={Item:{id:"minecraft:tnt"}}] run execute at @s run execute if block ~ ~ ~ minecraft:potatoes run function ckenja_potato:strobe/recipe
execute as @e[type=area_effect_cloud] run playsound block.note_block.pling master @a ~ ~ ~ 1 2