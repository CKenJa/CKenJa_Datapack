#Current As: Server
#Current At: Worldspawn???
execute as @e at @s if data entity @s CustomName run function bertiecrafter:petheaven/tickpet
execute as @e at @s unless data entity @s CustomName if data entity @s OwnerUUID if entity @s[nbt=!{OwnerUUID:""}] run function bertiecrafter:petheaven/tickpet

#team
title @a[team=!,team=!Heaven,scores={bcph_Sneak=1..}] actionbar {"text":"Can't show deceased pets, because you're in a /team already!","color":"red"}
team join Heaven @a[team=,scores={bcph_Sneak=1..}]
team leave @a[team=Heaven,scores={bcph_Sneak=0}]
scoreboard players set @a[scores={bcph_Sneak=1..}] bcph_Sneak 0