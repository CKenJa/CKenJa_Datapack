#NoAIはいらないかも
summon skeleton_horse ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tame:1b,Tags:["ckenja_dragon_horse","ckenja_dragon_initial"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],SaddleItem:{id:"minecraft:saddle",Count:1b}}
execute as @e[type=skeleton_horse,distance=0,tag=ckenja_dragon_initial] run function ckenja_dragon:summon/horse
scoreboard players operation #tmp_loop ckj03_data = #ckenja_dragon_part ckj03_data
function ckenja_dragon:summon/blocks