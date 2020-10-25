execute if entity @s[tag=ckenja_ghost_ghost] run function ckenja_ghost:ghost/general
execute if entity @s[tag=ckenja_ghost_polgei] run function ckenja_ghost:polgei/general
#execute if entity @s[type=item,nbt={Item:{id:"minecraft:pumpkin_pie",Count:1b,tag:{ckenja:{Tags:["ckenja_ghost:candy"]}}}}] run function ckenja_ghost:candy/general
execute if data entity @s Item.tag.ckenja.Tags[]."ckenja_ghost:candy" run function ckenja_ghost:candy/general