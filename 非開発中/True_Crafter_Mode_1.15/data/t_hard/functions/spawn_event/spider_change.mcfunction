#ケイブスパイダーとかスケルトンジョッキーとか
loot spawn ~ ~ ~ loot t_hard:random/spider_change
execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{T_Hard_Spawn:Cave_Spider}}}] run summon cave_spider ~ ~ ~
execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{T_Hard_Spawn:Spider_Jocky}}}] run summon spider ~ ~ ~ {Tags:["T_Hard_Already"],Passengers:[{id:"minecraft:skeleton",Tags:["T_Hard_Already","T_Hard_Ske_Ranged"],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:5195068}}}]}]}
execute if entity @e[sort=nearest,limit=1,type=item,nbt={Item:{tag:{T_Hard_Replace:1b}}}] run tag @s add T_Hard_GoToVoid
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:barrier",tag:{T_Hard_Random:1b}}}]
tp @s[tag=T_Hard_GoToVoid] ~ -1 ~
kill @s[tag=T_Hard_GoToVoid]
tag @s add T_Hard_Already