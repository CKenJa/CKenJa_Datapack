#@eはデフォルトで召喚された順に呼び出されるから、数字が大きいやつ程中心に召喚する
#88..100は身体の大型パーツ。トロッコを使って描画する
execute if score @s ckj_dragon_part matches 88..100 run summon minecart ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisplayOffset:-10000,Tags:["ckenja_dragon_block","ckenja_dragon_body","ckenja_dragon_initial"]}
#55..87は頭の一般パーツ。ゾンビを使って描画
execute if score @s ckj_dragon_part matches 55..87 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_face","ckenja_dragon_initial"]}
#53..54は黒目
execute if score @s ckj_dragon_part matches 53..54 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_brown_eye","ckenja_dragon_initial"]}
#51..52は白目
execute if score @s ckj_dragon_part matches 51..52 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_white_eye","ckenja_dragon_initial"]}
#43..50は頭の角
execute if score @s ckj_dragon_part matches 51..52 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_horn","ckenja_dragon_initial"]}
#33..42は胴の角 34 33は尻尾部分
execute if score @s ckj_dragon_part matches 51..52 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_horn","ckenja_dragon_initial"]}
#28..32の5個は通常ー尻尾
execute if score @s ckj_dragon_part matches 51..52 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_face","ckenja_dragon_initial"]}
#..27は左羽
execute if score @s ckj_dragon_part matches 51..52 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_face","ckenja_dragon_initial"]}
#右羽
execute if score @s ckj_dragon_part matches 51..52 run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ckenja_dragon_block","ckenja_dragon_face","ckenja_dragon_initial"]}


#summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ckenja_dragon_initial","ckenja_dragon_block"],Pose:{Head:[0f,0f,0f]}}
execute as @e[distance=0,tag=ckenja_dragon_initial] run function ckenja_dragon:summon/stand
#再起
scoreboard players remove #tmp_loop ckj03_data 1
execute if score #tmp_loop ckj03_data matches ..2 run function ckenja_dragon:summon/blocks