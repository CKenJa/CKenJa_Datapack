execute store result score #time ckenja_toolbox run time query daytime
execute if score #time ckenja_toolbox matches 130000.. run time set day
execute if score #time ckenja_toolbox matches ..130000 run time set night
kill @s