




summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["repitem"],PickupDelay:3}
data modify entity @e[type=item,tag=repitem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:7b}]

tag @e[tag=repitem] remove repitem
replaceitem block ~ ~ ~ container.7 air 















