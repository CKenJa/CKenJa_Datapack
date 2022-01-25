#> ckenja.fishing_star:star
#
# 実行者星玉
#
# @within function ckenja.fishing_star:tick

execute at @s as @e[tag=ckenja.fishing_star.bobber,distance=3..] run data modify storage ckenja.fishing_star: temp set from entity @s Pos
data modify entity @s Pos set from storage ckenja.fishing_star: temp
#現在の座標と
data modify storage ckenja.fishing_star: temp set from entity @s Pos
execute store result score $star.pos.x ckj.fishing_star run data get storage ckenja.fishing_star: temp[0] 100
execute store result score $star.pos.y ckj.fishing_star run data get storage ckenja.fishing_star: temp[1] 100
execute store result score $star.pos.z ckj.fishing_star run data get storage ckenja.fishing_star: temp[2] 100

#目標座標の
execute at @a anchored eyes run summon marker ^ ^ ^5 {Tags:["ckenja.fishing_star.marker"]}
execute as @e[tag=ckenja.fishing_star.marker] run function ckenja.fishing_star:marker
execute store result score $player.pos.x ckj.fishing_star run data get storage ckenja.fishing_star: temp[0] 100
execute store result score $player.pos.y ckj.fishing_star run data get storage ckenja.fishing_star: temp[1] 100
execute store result score $player.pos.z ckj.fishing_star run data get storage ckenja.fishing_star: temp[2] 100

#差を求めて
scoreboard players operation $player.pos.x ckj.fishing_star -= $star.pos.x ckj.fishing_star
scoreboard players operation $player.pos.y ckj.fishing_star -= $star.pos.y ckj.fishing_star
scoreboard players operation $player.pos.z ckj.fishing_star -= $star.pos.z ckj.fishing_star

#現在のベクトルと
data modify storage ckenja.fishing_star: temp set from entity @s Motion
execute store result score $star.motion.x ckj.fishing_star run data get storage ckenja.fishing_star: temp[0] 1000
execute store result score $star.motion.y ckj.fishing_star run data get storage ckenja.fishing_star: temp[1] 1000
execute store result score $star.motion.z ckj.fishing_star run data get storage ckenja.fishing_star: temp[2] 1000

#足して
scoreboard players operation $star.motion.x ckj.fishing_star += $player.pos.x ckj.fishing_star
scoreboard players operation $star.motion.y ckj.fishing_star += $player.pos.y ckj.fishing_star
scoreboard players operation $star.motion.z ckj.fishing_star += $player.pos.z ckj.fishing_star

#ベクトルに代入する
execute store result storage ckenja.fishing_star: temp[0] double 0.001 run scoreboard players get $star.motion.x ckj.fishing_star
execute store result storage ckenja.fishing_star: temp[1] double 0.001 run scoreboard players get $star.motion.y ckj.fishing_star
execute store result storage ckenja.fishing_star: temp[2] double 0.001 run scoreboard players get $star.motion.z ckj.fishing_star
data modify entity @s Motion set from storage ckenja.fishing_star: temp

#近くのモブに攻撃してぶっ飛ばす
execute store result storage ckenja.fishing_star: temp[0] double 0.01 run scoreboard players get $star.motion.x ckj.fishing_star
execute store result storage ckenja.fishing_star: temp[1] double 0.01 run scoreboard players get $star.motion.y ckj.fishing_star
execute store result storage ckenja.fishing_star: temp[2] double 0.01 run scoreboard players get $star.motion.z ckj.fishing_star
execute positioned as @s as @e[tag=!ckenja.fishing_star.star,tag=!ckenja.fishing_star.bobber,distance=..2] run function ckenja.fishing_star:attack