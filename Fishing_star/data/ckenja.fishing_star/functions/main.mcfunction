#> ckenja.fishing_star:main
#
# 実行者星玉
#
# @within function ckenja.fishing_star:tick

scoreboard objectives add ckj.fishing_star dummy
execute at @a anchored eyes run summon marker ^ ^ ^5 {Tags:["ckenja.fishing_star.marker"]}
execute at @s as @e[tag=ckenja.fishing_star.marker] facing entity @s eyes positioned 0.0 0.0 0.0 run function ckenja.fishing_star:marker
execute store result score $pos.x ckj.fishing_star run data get storage ckenja.fishing_star: Motion[0] 1000
execute store result score $pos.y ckj.fishing_star run data get storage ckenja.fishing_star: Motion[1] 1000
execute store result score $pos.z ckj.fishing_star run data get storage ckenja.fishing_star: Motion[2] 1000
data modify storage ckenja.fishing_star: Motion set from entity @s Motion
execute store result score $motion.x ckj.fishing_star run data get storage ckenja.fishing_star: Motion[0] 10000
execute store result score $motion.y ckj.fishing_star run data get storage ckenja.fishing_star: Motion[1] 10000
execute store result score $motion.z ckj.fishing_star run data get storage ckenja.fishing_star: Motion[2] 10000
scoreboard players operation $motion.x ckj.fishing_star += $pos.x ckj.fishing_star
scoreboard players operation $motion.y ckj.fishing_star += $pos.y ckj.fishing_star
scoreboard players operation $motion.z ckj.fishing_star += $pos.z ckj.fishing_star
execute store result storage ckenja.fishing_star: Motion[0] double 0.0001 run scoreboard players get $motion.x ckj.fishing_star
execute store result storage ckenja.fishing_star: Motion[1] double 0.0001 run scoreboard players get $motion.y ckj.fishing_star
execute store result storage ckenja.fishing_star: Motion[2] double 0.0001 run scoreboard players get $motion.z ckj.fishing_star
data modify entity @s Motion set from storage ckenja.fishing_star: Motion
#data remove storage ckenja.fishing_star: Motion
#scoreboard objectives remove ckj.fishing_star