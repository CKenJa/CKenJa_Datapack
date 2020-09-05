scoreboard players remove #loop_counter ckj01_data 1
execute if block ~ ~ ~ #ckj01:no_collision positioned ^ ^ ^1 unless score #loop_counter ckj01_data matches 0.. run function ckenja_skybreak:katana/loop
execute at @s if block ^ ^ ^1.5 #ckj01:no_collision run tp @s ^ ^ ^1
execute as @e[distance=..0.5] at @s run function ckenja_skybreak:katana/damage