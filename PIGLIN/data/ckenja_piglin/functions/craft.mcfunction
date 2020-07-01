clear @s minecraft:gold_block
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{EntityTag:{Glowing:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ckenja_piglin_nexus_initial","ckenja_piglin_nexus"],Pose:{Body:[0f,180f,0f]},ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}]}}}}
advancement revoke @s only ckenja_piglin:craft
recipe take @s ckenja_piglin:craft