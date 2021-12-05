clear @s minecraft:gold_ingot
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{EntityTag:{Glowing:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ckenja_piglinvation","ckenja_piglinvation_nexus_catalyst","ckenja_piglinvation_nexus","ckenja_piglinvation_nexus_initial"],Pose:{Body:[0f,180f,0f]},ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b,tag:{Enchantments:[{}]}}]}}}}
advancement revoke @s only ckenja_piglinvation:craft/nexus
recipe take @s ckenja_piglin:craft/nexus
