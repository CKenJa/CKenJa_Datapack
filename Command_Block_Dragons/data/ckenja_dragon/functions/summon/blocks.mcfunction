summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ckenja_dragon_initial"],Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,distance=0,tag=ckenja_dragon_initial] run function ckenja_dragon:summon/stand
#再起
scoreboard players remove #tmp_loop ckenja_dragon 1
execute if score #tmp_loop ckenja_dragon matches ..0 run function ckenja_dragon:summon/blocks