#summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{EntityTag:{NoGravity:1b,Small:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,Tags:["ckenja_nether_core","ckenja_nether_core_initial"],ArmorDropChances:[0.0,0.0,0.0,0.0],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{},{id:"minecraft:crying_obsidian",Count:1b}]}}}}
summon item ~ ~ ~ {Item:{id:"minecraft:lingering_potion",Count:1b,tag:{display:{Name:'{"text":"Bottled Nether","color":"red","bold":true,"italic":false}',Lore:['{"text":"古の封印を解きし時、世界は地獄に染まるであろう"}']},CKenJaNether:1b,CustomPotionColor:16711680}}}
clear @s minecraft:respawn_anchor
advancement revoke @s only ckenja_nether:craft
recipe take @s ckenja_nether:craft