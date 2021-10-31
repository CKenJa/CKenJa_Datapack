# 初期計算処理
data modify storage ckenja.grapple: pig set from entity @s {}
data modify storage ckenja.grapple: tmp.Pos set value [0.0d,0.0d,0.0d]

#old=pigは特に意味のない処理。デバッグ用
execute if score $old.pos.0 ckenja.grapple matches 0 run execute store result score $old.pos.0 ckenja.grapple run data get storage ckenja.grapple: pig.Pos[0] 1000
scoreboard players operation $old.pos.0 ckenja.grapple = $pig.pos.0 ckenja.grapple
execute store result score $player.motion.0 ckenja.grapple run data get storage ckenja.grapple: player.Motion[0] 10000
execute store result score $pig.pos.0 ckenja.grapple run data get storage ckenja.grapple: pig.Pos[0] 1000
scoreboard players operation $player.motion.0 ckenja.grapple += $pig.pos.0 ckenja.grapple
scoreboard players operation $pig.pos.0 ckenja.grapple -= $old.pos.0 ckenja.grapple
scoreboard players operation $old.pos.0 ckenja.grapple = $pig.pos.0 ckenja.grapple
scoreboard players operation $pig.pos.0 ckenja.grapple += $player.motion.0 ckenja.grapple
execute store result storage ckenja.grapple: tmp.Pos[0] double 0.001 run scoreboard players get $pig.pos.0 ckenja.grapple

execute if score $old.pos.1 ckenja.grapple matches 0 run execute store result score $old.pos.1 ckenja.grapple run data get storage ckenja.grapple: pig.Pos[1] 1000
scoreboard players operation $old.pos.1 ckenja.grapple = $pig.pos.1 ckenja.grapple
execute store result score $player.motion.1 ckenja.grapple run data get storage ckenja.grapple: player.Motion[1] 10000
execute store result score $pig.pos.1 ckenja.grapple run data get storage ckenja.grapple: pig.Pos[1] 1000
scoreboard players operation $player.motion.1 ckenja.grapple += $pig.pos.1 ckenja.grapple
scoreboard players operation $pig.pos.1 ckenja.grapple -= $old.pos.1 ckenja.grapple
scoreboard players operation $old.pos.0 ckenja.grapple = $pig.pos.0 ckenja.grapple
scoreboard players operation $pig.pos.1 ckenja.grapple += $player.motion.1 ckenja.grapple
execute store result storage ckenja.grapple: tmp.Pos[1] double 0.001 run scoreboard players get $pig.pos.1 ckenja.grapple

execute if score $old.pos.2 ckenja.grapple matches 0 run execute store result score $old.pos.2 ckenja.grapple run data get storage ckenja.grapple: pig.Pos[2] 1000
scoreboard players operation $old.pos.2 ckenja.grapple = $pig.pos.2 ckenja.grapple
execute store result score $player.motion.2 ckenja.grapple run data get storage ckenja.grapple: player.Motion[2] 10000
execute store result score $pig.pos.2 ckenja.grapple run data get storage ckenja.grapple: pig.Pos[2] 1000
scoreboard players operation $player.motion.2 ckenja.grapple += $pig.pos.2 ckenja.grapple
scoreboard players operation $pig.pos.2 ckenja.grapple -= $old.pos.2 ckenja.grapple
scoreboard players operation $old.pos.0 ckenja.grapple = $pig.pos.0 ckenja.grapple
scoreboard players operation $pig.pos.2 ckenja.grapple += $player.motion.2 ckenja.grapple
execute store result storage ckenja.grapple: tmp.Pos[2] double 0.001 run scoreboard players get $pig.pos.2 ckenja.grapple

# マーカー処理
execute as @e[tag=ckenja.grapple.hook] at @s run function ckenja.grapple:hook/

#Pos代入
#data modify entity @s Pos set from storage ckenja.grapple: tmp.Pos
