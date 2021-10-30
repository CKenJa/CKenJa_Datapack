# 初期計算処理
data modify storage ckenja.grapple pig set from entity @s {}
execute store result score #pig.motion.0 ckenja.grapple run data get storage ckenja.grapple pig.Motion[0] 10
execute store result score #pig.pos.0 ckenja.grapple run data get storage ckenja.grapple pig.Pos[0] 10
scoreboard players operation #pig.motion.0 ckenja.grapple += #pig.pos.0 ckenja.grapple

# マーカー処理
execute store result score #marker.number ckenja.grapple run execute if entity @e[tag=ckenja.grapple.marker]
execute if score #marker.number ckenja.grapple matches 2.. run kill @e[limit=1,tag=marker]
execute if score #marker.number ckenja.grapple matches 0 run summon minecraft:marker ~ ~ ~ {Tags:["ckenja.grapple.marker"]}
execute as @e[tag=ckenja.grapple.marker,limit=1] run function ckenja.grapple:pig/marker
