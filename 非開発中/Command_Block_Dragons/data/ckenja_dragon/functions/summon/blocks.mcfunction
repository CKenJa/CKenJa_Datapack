#@eはデフォルトで召喚された順に呼び出されるから、数字が大きいやつ程中心に召喚する
#88..100は身体の大型パーツ。トロッコを使って描画する
#execute if score #tmp_loop ckj03_data matches 88..100 run summon minecart ~ ~ ~ {NoGravity:1b,Invulnerable:1b,CustomDisplayTile:1b,DisplayOffset:-10000,Tags:["ckenja_dragon_block","ckenja_dragon_body","ckenja_dragon_initial"],DisplayState:{Name:"minecraft:diamond_block"}}
execute if score #tmp_loop ckj03_data matches 88..100 run summon shulker ~ ~ ~ {NoAI:1b,NoGravity:1b,Invulnerable:1b,AttachFace:0b,Tags:["ckenja_dragon_block","ckenja_dragon_body","ckenja_dragon_initial"]}
#55..87は頭の一般パーツ。ゾンビを使って描画
execute if score #tmp_loop ckj03_data matches 55..87 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_face","ckenja_dragon_initial"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
#53..54は黒目
execute if score #tmp_loop ckj03_data matches 53..54 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_brown_eye","ckenja_dragon_initial"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
#51..52は白目
execute if score #tmp_loop ckj03_data matches 51..52 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_white_eye","ckenja_dragon_initial"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
#43..50は頭の角
execute if score #tmp_loop ckj03_data matches 43..502 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_horn","ckenja_dragon_initial"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
#33..42は胴の角 34 33は尻尾部分
execute if score #tmp_loop ckj03_data matches 33..42 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_horn","ckenja_dragon_initial"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
#28..32の5個は通常ー尻尾
execute if score #tmp_loop ckj03_data matches 28..32 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_face","ckenja_dragon_initial"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
#0..27は羽
execute if score #tmp_loop ckj03_data matches 0..27 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_face","ckenja_dragon_initial"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}


#summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ckenja_dragon_initial","ckenja_dragon_block"],Pose:{Head:[0f,0f,0f]}}
execute as @e[distance=0,tag=ckenja_dragon_initial] run function ckenja_dragon:summon/stand
#再起
scoreboard players remove #tmp_loop ckj03_data 1
execute if score #tmp_loop ckj03_data matches 2.. run function ckenja_dragon:summon/blocks