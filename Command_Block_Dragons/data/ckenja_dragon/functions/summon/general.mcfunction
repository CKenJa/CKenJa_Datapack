summon llama ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Leashed:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tame:1b,Strength:0,ChestedHorse:1b,Tags:["ckenja_dragon_initial","ckenja_dragon_llama"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
execute as @e[type=llama,distance=0,tag=ckenja_dragon_llama_initial] run function ckenja_dragon:summon/llama
scoreboard players operation #tmp_loop ckj03_data = #ckenja_dragon_part ckj03_data
function ckenja_dragon:summon/blocks