#
execute as @s store result entity @s Pose.Head[1] float 1 run scoreboard players add @s Spin 14
scoreboard players set @s[scores={Spin=360..}] Spin 0