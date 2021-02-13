data remove storage ckenja_ruin: done
execute store result storage ckenja_ruin: yet[0][0] byte 1 run scoreboard players get #start_x ckenja_ruin
execute store result storage ckenja_ruin: yet[0][1] byte 1 run scoreboard players get #start_y ckenja_ruin
execute store result storage ckenja_ruin: yet[0][2] byte 1 run scoreboard players get #start_z ckenja_ruin
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ckenja_ruin_runer"]}