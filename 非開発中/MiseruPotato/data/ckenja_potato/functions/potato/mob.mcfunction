summon minecraft:item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,nbt={PickupDelay:32767s,Item:{id:"minecraft:dirt",Count:1b}}] Item set from entity @s HandItems[0]
data merge entity @e[type=item,sort=nearest,limit=1,nbt={PickupDelay:32767s}] {PickupDelay:0,Tags:[]}
replaceitem entity @s weapon.mainhand air
effect give @s minecraft:wither 1