#ガストになる
loot spawn ~ ~ ~ loot t_hard:random/husk_change
execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{T_Hard_Spawn:Ghast}}}] run summon ghast ~ ~5 ~
execute if entity @e[sort=nearest,limit=1,type=item,nbt={Item:{tag:{T_Hard_Replace:1b}}}] run tag @s add T_Hard_GoToVoid
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:barrier",tag:{T_Hard_Random:1b}}}]
tp @s[tag=T_Hard_GoToVoid] ~ -1 ~
kill @s[tag=T_Hard_GoToVoid]