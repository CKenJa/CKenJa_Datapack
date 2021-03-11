#@eはデフォルトで召喚された順に呼び出されるから、数字が大きいやつ程中心に召喚する
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ckenja_dragon_initial","ckenja_dragon_block"],Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,distance=0,tag=ckenja_dragon_initial] run function ckenja_dragon:summon/stand
#再起
scoreboard players remove #tmp_loop ckj03_data 1
execute if score #tmp_loop ckj03_data matches ..0 run function ckenja_dragon:summon/blocks