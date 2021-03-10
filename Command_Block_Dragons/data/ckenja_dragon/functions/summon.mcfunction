#summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["test_child"],Pose:{Head:[45f,0f,0f]},Rotation:[0F,45F],ArmorItems:[{},{},{},{id:"minecraft:brick_stairs",Count:1b}]}
summon llama ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Leashed:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tame:1b,Strength:0,ChestedHorse:1b,Tags:["ckenja_dragon_llama_initial"]}
scoreboard players operation #tmp_loop ckenja_dragon = #parts ckenja_dragon
function ckenja_dragon:summon/blocks