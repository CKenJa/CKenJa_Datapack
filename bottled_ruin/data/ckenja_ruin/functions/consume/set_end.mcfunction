summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ckenja_ruin","ckenja_ruin_initial"]}

#視線トーレス
tag @s add ckenja_ruin
scoreboard players operation #tmp_id ckj03_data = @s ckj03_id
execute if entity @e[type=area_effect_cloud,distance=0,tag=ckenja_ruin_initial] run function ckenja_ruin:consume/set_end/entity
tag @s remove ckenja_ruin