execute store result score # ckenja_human_can run data get entity @s Rotation[0] 1
execute store result entity @e[tag=ckenja_human_cannon,limit=1] Rotation[0] float 1 run scoreboard players get # ckenja_human_can
execute store result score # ckenja_human_can run data get entity @s Rotation[1] 1
execute store result entity @e[tag=ckenja_human_cannon,limit=1] Rotation[1] float 1 run scoreboard players get # ckenja_human_can
execute store result entity @e[tag=ckenja_human_cannon,limit=1] Pose.Head[0] float 1 run scoreboard players get # ckenja_human_can